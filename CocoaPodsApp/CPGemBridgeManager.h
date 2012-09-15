//
//  CPCocoaPodsManager.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 10/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CocoaPodsModel.h"

extern NSString *const kCPGemBridgeManagerNotificationHumarReadableKey;

extern NSString *const kCPGemBridgeManagerDidStartUpdateNotification;
extern NSString *const kCPGemBridgeManagerDidCompleteUpdateNotification;

extern NSString *const kCPGemBridgeManagerNoSpecFilter;
extern NSString *const kCPGemBridgeManagerIOSSpecFilter;
extern NSString *const kCPGemBridgeManagerOSXSpecFilter;
extern NSString *const kCPGemBridgeManagerBothPlatformsSpecFilter;

@interface CPGemBridgeManager : NSObject

+ (CPGemBridgeManager*)sharedInstance;

- (void)updateSets;
//- (void)updateSpecs;
- (void)updateSpec:(CPSpecification*)spec;

- (void)versionWithCompletionHandler:(void (^)(NSString* version))handler;
- (void)checkRepoCompatibiltyWithHandler:(void (^)(BOOL repoCompatible))handler;

- (NSArray*)specs;
- (NSArray*)specsWithFilter:(NSString*)kCPGemBridgeManagerSpecFilter;

- (NSUInteger)specsCount;
- (NSUInteger)specsCountWithFilter:(NSString*)kCPGemBridgeManagerSpecFilter;

@property NSString* cocoapodsVersion;

@end
