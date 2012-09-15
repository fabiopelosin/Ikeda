//
//  CPCocoaPodsManager.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 10/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPGemBridgeManager.h"
#import "MacRubyServiceProtocol.h"
#import "BlocksKit.h"
#import "CoreData+MagicalRecord.h"

NSString *const kCPGemBridgeManagerNotificationHumarReadableKey = @"kCPGemBridgeManagerNotificationHumarReadableKey";


NSString *const kCPGemBridgeManagerDidStartUpdateNotification = @"kCPGemBridgeManagerDidStartUpdateNotification";
NSString *const kCPGemBridgeManagerDidCompleteUpdateNotification  = @"kCPGemBridgeManagerDidCompleteUpdateNotification";

NSString *const kCPGemBridgeManagerNoSpecFilter = @"kCPGemBridgeManagerNoSpecFilter";
NSString *const kCPGemBridgeManagerIOSSpecFilter = @"kCPGemBridgeManagerIOSSpecFilter";
NSString *const kCPGemBridgeManagerOSXSpecFilter = @"kCPGemBridgeManagerOSXSpecFilter";
NSString *const kCPGemBridgeManagerBothPlatformsSpecFilter = @"kCPGemBridgeManagerBothPlatformsSpecFilter";

@implementation CPGemBridgeManager {
  id<MacRubyServiceProtocol> cocoaPodsProxy;
}

+ (CPGemBridgeManager*)sharedInstance
{
  static dispatch_once_t pred = 0;
  __strong static id _sharedObject = nil;
  dispatch_once(&pred, ^{
                  _sharedObject = [[self alloc] init];
                });
  return _sharedObject;
}

- (id)init
{
  self = [super init];
  if (self) {
    [self setUp];
  }
  return self;
}

- (void)setUp {
  [MagicalRecord setupAutoMigratingCoreDataStack];


  NSXPCInterface *interface = [NSXPCInterface interfaceWithProtocol:@protocol(MacRubyServiceProtocol)];
  NSXPCConnection *connection = [[NSXPCConnection alloc] initWithServiceName:@"org.cocoapods.macrubyservice"];
  connection.remoteObjectInterface = interface;
  [connection resume];

  cocoaPodsProxy = [connection remoteObjectProxyWithErrorHandler:^(NSError *error) {
                      dispatch_async (dispatch_get_main_queue (), ^{
                                        [[[NSApp delegate] window] presentError:error];
                                        NSLog (@"CONNECTION ERROR: %@", error);
                                      });
                    }];

  connection.invalidationHandler = ^{
    NSLog (@"CONNECTION INVALIDATED");
  };


  NSLog (@"COMPLETED CONNECTION REQUESTS");
}

- (void)versionWithCompletionHandler:(void (^)(NSString* version))handler {
  [cocoaPodsProxy stringForKey:@"version" completion:^(NSString *version) {
     handler (version);
   }];
}

- (void)checkRepoCompatibiltyWithHandler:(void (^)(BOOL repoCompatible))handler {
  [cocoaPodsProxy numberForKey:@"needs_setup" completion:^(NSNumber *compatible) {
    handler ([compatible boolValue]);
  }];
}


- (void)updateSets {
  NSDictionary *info = @{ kCPGemBridgeManagerNotificationHumarReadableKey : @"Updating sets" };
  [[NSNotificationCenter defaultCenter] postNotificationName:kCPGemBridgeManagerDidStartUpdateNotification
                                                      object:self
                                                    userInfo:info];
  [cocoaPodsProxy arrayForKey:@"all_sets" completion:^(NSArray *response) {
     [MagicalRecord saveInBackgroundWithBlock:^(NSManagedObjectContext *localContext) {
        [response enumerateObjectsUsingBlock:^(NSDictionary *entry, NSUInteger idx, BOOL *stop) {

          CPSet *set = [CPSet MR_findFirstByAttribute:@"name" withValue:entry[@"name"] inContext:localContext];
          if (!set) {
            set = [CPSet MR_createInContext:localContext];
            set.name = entry[@"name"];
            set.needsSpecUpdate = true;
            NSLog (@"CREATING SET");
          }

          NSArray *versions = [[set.versions array] map:^id (CPVersion* obj) {
                                 return obj.value;
                               }];

          NSArray *newVersions = [entry[@"versions"] reject:^BOOL (NSString* vesion) {
                                    return [versions containsObject:vesion];
                                  }];

          if (newVersions.count != 0) {
            set.needsSpecUpdate = true;
            NSArray *versions = [entry[@"versions"] map:^id (NSString* entry) {
                                   CPVersion *version = [CPVersion MR_createInContext:localContext];
                                   version.value = entry;
                                   return version;
                                 }];
            set.versions = [NSOrderedSet orderedSetWithArray:versions];
          }
        }];
      } completion:^{
        NSLog (@"SETS SAVED");
        // Lame hack because it was not saving the context
        [[NSManagedObjectContext MR_defaultContext] MR_saveNestedContexts];
        [[NSNotificationCenter defaultCenter] postNotificationName:kCPGemBridgeManagerDidCompleteUpdateNotification object:self userInfo:nil];
        [self updateSpecs];
      }];
   }];
}

- (void)updateSpecs {
  NSArray *sets = [CPSet MR_findAllSortedBy:@"name" ascending:YES];

  NSArray *dirtySets = [sets select:^BOOL (CPSet *set) {
                          return set.needsSpecUpdate || !set.spec;
                        }];

  if (dirtySets.count == 0) {
    return;
  }

  NSArray *names = [dirtySets map:^id (CPSet *set) {
    return set.name;
  }];

  NSDictionary *info = @{ kCPGemBridgeManagerNotificationHumarReadableKey : [NSString stringWithFormat:@"Loading %ld specifications", dirtySets.count] };
  [[NSNotificationCenter defaultCenter] postNotificationName:kCPGemBridgeManagerDidStartUpdateNotification
                                                      object:self
                                                    userInfo:info];  [cocoaPodsProxy arrayForKey:@"specs" arguments:@ { @"names":names } completion: ^(NSArray *response){
    [MagicalRecord saveInBackgroundWithBlock:^(NSManagedObjectContext *localContext) {
      [response enumerateObjectsUsingBlock:^(NSDictionary *entry, NSUInteger idx, BOOL *stop) {
        if (entry[@"name"]) {
          CPSpecification *spec = [CPSpecification MR_createInContext:localContext];
          [entry enumerateKeysAndObjectsUsingBlock:^(NSString* key, id value, BOOL *stop) {
            if (![key isEqualToString:@"subspecs"]) {
              [spec setValue:value forKey:key];
            }
          }];
          CPSet *set = [CPSet MR_findByAttribute:@"name" withValue:spec.name inContext:localContext][0];
          set.needsSpecUpdate = false;
          [set.spec MR_deleteInContext:localContext];
          set.spec = spec;
        }
      }];
    } completion:^{
      NSLog (@"SPECS SAVED");
      // Lame hack because it was not saving the context
      [[NSManagedObjectContext MR_defaultContext] MR_saveNestedContexts];
      [[NSNotificationCenter defaultCenter] postNotificationName:kCPGemBridgeManagerDidCompleteUpdateNotification object:self userInfo:nil];
    }];
  }];
}

- (void)updateSpec:(CPSpecification*)specification {
  NSDictionary *info = @{ kCPGemBridgeManagerNotificationHumarReadableKey : [NSString stringWithFormat:@"Updating %@", specification.name] };
  [[NSNotificationCenter defaultCenter] postNotificationName:kCPGemBridgeManagerDidStartUpdateNotification
                                                      object:self
                                                    userInfo:info];
  
  [cocoaPodsProxy arrayForKey:@"specs" arguments:@ { @"names":@[specification.name] } completion:^(NSArray *response) {
     [MagicalRecord saveInBackgroundWithBlock:^(NSManagedObjectContext *localContext) {
        CPSpecification *spec = [CPSpecification MR_findFirstByAttribute:@"name" withValue:specification.name inContext:localContext];
        NSDictionary *entry = response.lastObject;
       [entry enumerateKeysAndObjectsUsingBlock:^(NSString* key, id value, BOOL *stop) {
         if (![key isEqualToString:@"subspecs"]) {
           [spec setValue:value forKey:key];
         }
       }];
      } completion:^{
        NSLog (@"UPDATED: %@", specification.name);
        // Lame hack because it was not saving the context
        [[NSManagedObjectContext MR_defaultContext] MR_saveNestedContexts];
        [[NSNotificationCenter defaultCenter] postNotificationName:kCPGemBridgeManagerDidCompleteUpdateNotification object:self userInfo:nil];
      }];
   }];
}

#pragma mark - Specs convenience methods

- (NSPredicate*)predicateForFilter:(NSString*)filter {
  NSPredicate *predicate;
  if ([filter isEqualToString:kCPGemBridgeManagerNoSpecFilter]) {
    predicate = [NSPredicate predicateWithValue:YES];
  } else if ([filter isEqualToString:kCPGemBridgeManagerIOSSpecFilter]) {
    predicate = [NSPredicate predicateWithFormat:@"supportsIOS == YES"];
  } else if ([filter isEqualToString:kCPGemBridgeManagerOSXSpecFilter]) {
    predicate = [NSPredicate predicateWithFormat:@"supportsOSX == YES"];
  } else if ([filter isEqualToString:kCPGemBridgeManagerBothPlatformsSpecFilter]) {
    predicate = [NSPredicate predicateWithFormat:@"supportsIOS == YES && supportsOSX == YES"];
  } else {
    [NSException raise:NSInternalInconsistencyException format:@"Unrecognized spec filter %@", filter];
  }
  return predicate;
}

- (NSArray*)specs {
  return [self specsWithFilter:kCPGemBridgeManagerNoSpecFilter];
}

- (NSArray*)specsWithFilter:(NSString*)filter {
  NSPredicate *predicate = [self predicateForFilter:filter];
  return [CPSpecification MR_findAllSortedBy:@"name" ascending:YES withPredicate:predicate];
}

- (NSUInteger)specsCount {
  return [self specsCountWithFilter:kCPGemBridgeManagerNoSpecFilter];
}

- (NSUInteger)specsCountWithFilter:(NSString*)filter {
  NSPredicate *predicate = [self predicateForFilter:filter];
  return [CPSpecification MR_countOfEntitiesWithPredicate:predicate];
}

@end
