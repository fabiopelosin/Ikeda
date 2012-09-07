//
//  CPMacRubyProxy.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 07/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPMacRubyServiceProtocol.h"

/*
 This class exists because:
 - I'm having trouble with defining MacRuby methods that take blocks as parameters
 - Even loading the protocol through the bridge support I would receive a warning.

        org.cocoapods.macrubyservice[72163]: Warning: Exception caught during decoding of received message, dropping incoming message.
        Exception: <NSXPCDecoder: 0x401294e00> received a message that is not in the interface of the local object (feedMeAWatermelon:), dropping.
 */

@interface CPMacRubyProxy : NSObject <CPMacRubyServiceProtocol>

@end
