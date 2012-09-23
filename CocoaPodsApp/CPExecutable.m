//
//  CPExecutable.m
//  CocoaPodsApp
//
//  Created by Jonathan Willing on 9/23/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPExecutable.h"

@implementation CPExecutable

+ (NSTask *)taskWithWorkingDirectory:(NSString *)workingDirectory arguments:(NSArray *)arguments {
    NSPipe *pipe = [NSPipe pipe];
    
    NSMutableDictionary *environment = [[[NSProcessInfo processInfo] environment] mutableCopy];
    environment[@"CP_STDOUT_SYNC"] = @"TRUE";
    //  environment[@"DYLD_PRINT_LIBRARIES"] = @"TRUE";
    arguments = [@[@"--no-color", @"--verbose"] arrayByAddingObjectsFromArray:arguments];
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath:[self.class embededExecutablePath]];
    [task setEnvironment: environment];
    [task setArguments:arguments];
    [task setStandardInput:[NSPipe pipe]];
    [task setStandardOutput:pipe];
    [task setStandardError:pipe];
    if (workingDirectory) {
        [task setCurrentDirectoryPath:[workingDirectory stringByStandardizingPath]];
    }
    
    return task;
}

+ (NSString*)embededExecutablePath {
    return [[NSBundle mainBundle] pathForAuxiliaryExecutable:@"pod"];
}

@end
