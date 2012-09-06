//
//  CPSpec.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 04/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPSpec.h"

@implementation CPSpec


/*
 SAMPLE:
 "--> A2DynamicDelegate (1.0, 1.0.1, 1.0.2, 1.0.3, 1.0.4, 1.0.5, 1.0.6, 1.0.7, 1.0.8, 2.0.0, 2.0.1)
 Blocks are to functions as A2DynamicDelegate is to delegates.
 - Homepage: https://github.com/pandamonia/A2DynamicDelegate
 - Source:   https://github.com/pandamonia/A2DynamicDelegate.git"
 */
+ (CPSpec*)specFromString:(NSString*)string {
    CPSpec* spec = [[self class] new];
    NSArray *lines = [string componentsSeparatedByString:@"\n"];
    NSString*first = lines[0];
    spec.name = [first componentsSeparatedByString:@" "][1];
    spec.summary = lines[1];
    spec.summary = [spec.summary substringFromIndex:4];
    return spec;
}


@end
