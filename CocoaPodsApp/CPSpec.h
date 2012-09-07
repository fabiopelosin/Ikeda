//
//  CPSpec.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 04/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CPSpec : NSObject

@property NSString* name;
@property NSString* summary;
@property NSString* description;
@property NSString* author;
@property NSString* homepage;
@property NSString* version;
@property NSString* filePath;

+ (CPSpec*)specFromDict:(NSDictionary*)dict;


@end
