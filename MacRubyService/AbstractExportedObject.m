//
//  CPMacRubyProxy.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 07/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "AbstractExportedObject.h"

@implementation AbstractExportedObject

- (void)stringForKey:(NSString*)key completion:(void (^)(NSString*))completion {
  completion([self valueForKey:key]);
}

- (void)arrayForKey:(NSString*)key completion:(void (^)(NSArray*))completion {
  completion([self valueForKey:key]);
}

- (void)dictionaryForKey:(NSString*)key completion:(void (^)(NSDictionary *))completion {
  completion([self valueForKey:key]);
}

@end
