//
//  CPSpec.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 04/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPSpec.h"

@implementation CPSpec

+ (CPSpec*)specFromDict:(NSDictionary*)dict {
    CPSpec* spec = [[self class] new];
    spec.name = [dict objectForKey:@"name"];
    spec.summary = [dict objectForKey:@"summary"];
    spec.description = [dict objectForKey:@"description"];
    spec.filePath = [dict objectForKey:@"defined_in_file"];
    spec.version = [dict objectForKey:@"version"];
    spec.homepage = [dict objectForKey:@"homepage"];

    return spec;
}



@end
