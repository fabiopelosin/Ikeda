//
//  CPCocoaPodsManager.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 10/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CocoaPodsModel.h"

@interface CPCocoaPodsManager : NSObject

+ (CPCocoaPodsManager*)sharedInstance;

- (void)updateSets;
- (void)updateSpecs;

- (NSArray*)specs;

@property NSString* cocoapodsVersion;

@end
