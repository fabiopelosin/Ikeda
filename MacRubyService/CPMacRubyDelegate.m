//
//  CPMacRubyDelegate.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 07/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPMacRubyDelegate.h"
#import "CPMacRubyProxy.h"

@implementation CPMacRubyDelegate

// Testing
- (BOOL)listener:(NSXPCListener *)listener shouldAcceptNewConnection:(NSXPCConnection *)newConnection; {
    NSLog(@"SERVICE: shouldAcceptNewConnection");
    newConnection.exportedInterface = [NSXPCInterface interfaceWithProtocol:@protocol(CPMacRubyServiceProtocol)];
    newConnection.exportedObject = [[CPMacRubyProxy alloc] init];
    [newConnection resume];
    return YES;
}


@end
