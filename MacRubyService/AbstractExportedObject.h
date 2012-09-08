//
//  CPMacRubyProxy.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 07/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MacRubyServiceProtocol.h"

/*
 This class simply forwards the methods defined in the MacRubyServiceProtocol to itself
 requests that don't contain parameters are redirected in [self valueForKey:key].
 
    // XPC RREQUEST (Objective-C)
    [proxy stringForKey:@"version" completion:^(NSString *version) {
        NSLog(@"Version: %@", version);
    }];
 

    // CONCRETE SUBCLASS CLASS IMPLEMENTATION (Ruby)
    def version
      "0.0.1"
    end

 This class exists because:
 - I'm having trouble with defining MacRuby methods that take blocks as parameters
 - Even loading the protocol through the bridge support I would receive a warning.

        org.cocoapods.macrubyservice[72163]: Warning: Exception caught during decoding of received message, dropping incoming message.
        Exception: <NSXPCDecoder: 0x401294e00> received a message that is not in the interface of the local object (feedMeAWatermelon:), dropping.
 */
@interface AbstractExportedObject : NSObject <MacRubyServiceProtocol>

@end
