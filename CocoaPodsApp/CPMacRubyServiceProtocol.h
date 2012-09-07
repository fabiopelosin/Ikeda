//
//  CPMacRubyServiceProtocol.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 07/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CPMacRubyServiceProtocol <NSObject>
@required
- (void)specs:(void (^)(NSArray *))specs;
- (void)cocoapodsVersion:(void (^)(NSString *))version;
@end
