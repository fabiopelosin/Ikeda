//
//  CPMacRubyProxy.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 07/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPMacRubyProxy.h"

@implementation CPMacRubyProxy

- (void)specs:(void (^)(NSArray *))specs {
    specs([self _specs]);
}

-(NSArray*)_specs {
    return nil;
}

- (NSString*)_cocoapodsVersion {
    return nil;
}

- (void)cocoapodsVersion:(void (^)(NSString *))version {
    version([self _cocoapodsVersion]);
}

@end
