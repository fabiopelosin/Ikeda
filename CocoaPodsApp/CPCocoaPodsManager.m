//
//  CPCocoaPodsManager.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 10/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPCocoaPodsManager.h"
#import "MacRubyServiceProtocol.h"
#import "BlocksKit.h"
#import "CoreData+MagicalRecord.h"

@implementation CPCocoaPodsManager {
  id<MacRubyServiceProtocol> cocoaPodsProxy;
}

+ (CPCocoaPodsManager*)sharedInstance
{
  static dispatch_once_t pred = 0;
  __strong static id _sharedObject = nil;
  dispatch_once(&pred, ^{
    _sharedObject = [[self alloc] init]; // or some other init method
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
    NSLog(@"CONNECTION ERROR: %@", error);
  }];

  connection.invalidationHandler = ^{
    NSLog(@"CONNECTION INVALIDATED");
  };

  [cocoaPodsProxy stringForKey:@"version" completion:^(NSString *version) {
    NSLog(@"Version: %@", version);
    self.cocoapodsVersion = version;
  }];

  NSLog(@"COMPLETED CONNECTION REQUESTS");
}

- (void)updateSets {
  [cocoaPodsProxy arrayForKey:@"all_sets" completion:^(NSArray *response) {
    [MagicalRecord saveInBackgroundWithBlock:^(NSManagedObjectContext *localContext) {
      [response enumerateObjectsUsingBlock:^(NSDictionary *entry, NSUInteger idx, BOOL *stop) {

        CPSet *set = [CPSet findFirstByAttribute:@"name" withValue:entry[@"name"]];
        if (!set) {
          set = [CPSet createInContext:localContext];
          set.name = entry[@"name"];
          set.needsSpecUpdate = true;
          NSLog(@"creatingSPEC");
        }

        NSArray *versions = [[set.versions array] map:^id(CPVersion* obj) {
          return obj.value;
        }];

        NSArray *newVersions = [entry[@"versions"] reject:^BOOL(NSString* vesion) {
          return [versions containsObject:vesion];
        }];

        if (newVersions.count != 0) {
          set.needsSpecUpdate = true;
          NSArray *versions = [entry[@"versions"] map:^id(NSString* entry) {
            CPVersion *version = [CPVersion createInContext:localContext];
            version.value = entry;
            return version;
          }];
          set.versions = [NSOrderedSet orderedSetWithArray:versions];
        }
      }];
    } completion:^{
      NSLog(@"SETS SAVED");
      [[NSManagedObjectContext MR_defaultContext] MR_saveNestedContexts];
      [self updateSpecs];
    }];
  }];
}

- (void)updateSpecs {
  NSArray *sets = [CPSet findAllSortedBy:@"name" ascending:YES];

  NSArray *dirtySets = [sets select:^BOOL(CPSet *set) {
    return set.needsSpecUpdate || !set.spec;
  }];

  NSLog(@"COUNT: %lu (%lu dirty)\n\n", sets.count, dirtySets.count);
  if (dirtySets.count != 0) {
    NSArray *names = [dirtySets map:^id(CPSet *set) {
      return set.name;
    }];

    [cocoaPodsProxy arrayForKey:@"specs" arguments:@{ @"names": names } completion: ^(NSArray *response){
      [MagicalRecord saveInBackgroundWithBlock:^(NSManagedObjectContext *localContext) {
        [response enumerateObjectsUsingBlock:^(NSDictionary *entry, NSUInteger idx, BOOL *stop) {
          CPSpecification *spec = [CPSpecification createInContext:localContext];
          spec.name = entry[@"name"];
          spec.version = entry[@"version"];
          spec.homepage = entry[@"homepage"];
          spec.summary = entry[@"summary"];
          spec.specDescription = entry[@"description"];
          spec.definedInFile = entry[@"defined_in_file"];
          spec.supportsIOS = entry[@"supports_ios"];
          spec.supportsOSX = entry[@"supports_osx"];

          CPSet *set = [CPSet findByAttribute:@"name" withValue:spec.name inContext:localContext][0];
          set.needsSpecUpdate = false;
          [set.spec deleteInContext:localContext];
          set.spec = spec;

          //NSLog(@"spec.name = %@", spec.name);
        }];
      } completion:^{
        NSLog(@"SPECS SAVED");
        [[NSManagedObjectContext MR_defaultContext] MR_saveNestedContexts];
      }];
    }];
  }
}

- (NSArray*)specs {
  return [CPSpecification MR_findAllSortedBy:@"name" ascending:YES];
}


@end
