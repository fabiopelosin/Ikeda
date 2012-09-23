//
//  CPExecutable.h
//  CocoaPodsApp
//
//  Created by Jonathan Willing on 9/23/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CPExecutableCompletionBlock)(NSInteger terminationStatus);

@interface CPExecutable : NSObject

+ (NSTask *)taskWithWorkingDirectory:(NSString *)workingDirectory arguments:(NSArray *)arguments;

@end
