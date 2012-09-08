//
//  CPMacRubyServiceProtocol.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 07/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 Protocol to interface with a MacRuby XPC service. As type checking is not performed
 at runtime in ruby we just send requests for key that will be implemted by a concrete
 subclass of {AbstractExportedObject}.
 
 We need a method for each input of the completion block because we can't specify id
 as the NSXPC classe check for the type of block parameters. */
@protocol MacRubyServiceProtocol <NSObject>

@required

- (void)stringForKey:(NSString*)key completion:(void (^)(NSString*))completion;
- (void)arrayForKey:(NSString*)key completion:(void (^)(NSArray*))completion;
- (void)dictionaryForKey:(NSString*)key completion:(void (^)(NSDictionary*))completion;

// @TODO: Add variants that support arguments

//- (void)stringWithName:(NSString*)name arguments:(NSArray*)arguments completion:(void (^)(NSString*))completion;
//- (void)arrayWithName:(NSString*)name arguments:(NSArray*)arguments completion:(void (^)(NSString*))completion;
//- (void)dictionaryWithName:(NSString*)name arguments:(NSArray*)arguments completion:(void (^)(NSString*))completion;
@end
