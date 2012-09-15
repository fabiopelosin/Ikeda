//
//  CPExecutableManager.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 11/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CPExecutableOutputBlock)(NSString* output);
typedef void (^CPExecutableCompletionBlock)(int terminationStatus);

@interface CPExecutableManager : NSObject

@property NSString *executablePath;

+ (CPExecutableManager*)sharedInstance;

+ (NSString*)embdedExecutablePath;

- (void)executeWithWorkingDirectory:(NSString*)workingDirectory arguments:(NSArray*)arguments
                      outputHandler:(CPExecutableOutputBlock)outputHandler
                  completionHandler:(CPExecutableCompletionBlock)completionHandler;

- (void)executeWithWorkingDirectory:(NSString*)workingDirectory arguments:(NSArray*)arguments
                      outputHandler:(CPExecutableOutputBlock)outputHandler;

- (void)executeWithArguments:(NSArray*)arguments
               outputHandler:(CPExecutableOutputBlock)outputHandler;

@end
