//
//  CPExecutableManager.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 11/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPExecutableManager.h"
#import "MAKVONotificationCenter.h"

@implementation CPExecutableManager {
  NSMutableDictionary *_outputHandlers;
}

+ (CPExecutableManager*)sharedInstance
{
  static dispatch_once_t pred = 0;
  __strong static id _sharedObject = nil;
  dispatch_once(&pred, ^{
    _sharedObject = [[self alloc] init];
  });
  return _sharedObject;
}

- (id)init
{
  self = [super init];
  if (self) {
    _executablePath = [[self class] embdedExecutablePath];
    _outputHandlers = [NSMutableDictionary new];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(fileHandleDataAvailableNotification:) name:NSFileHandleDataAvailableNotification object:nil];
  }
  return self;
}

- (void)fileHandleDataAvailableNotification:(NSNotification*)notification {

}

+ (NSString*)embdedExecutablePath {
  return [[NSBundle mainBundle] pathForAuxiliaryExecutable:@"pod"];
}

- (void)executeWithWorkingDirectory:(NSString*)workingDirectory
                          arguments:(NSArray*)arguments
                      outputHandler:(CPExecutableOutputBlock)outputHandler
                  completionHandler:(CPExecutableCompletionBlock)completionHandler {

  // TODO set STDOUT.sync = true with environment variable in CocoaPods
  // Currently the executable is patched manually

  // TODO Disable markdown template that causes issues with string encoding

  void (^notificationBlock)(NSNotification *note) = ^(NSNotification *note) {
    NSFileHandle *fh = [note object];
    NSData *data = [fh availableData];
    if (data.length) {
      NSString*output = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
      if (!output) {
        NSLog(@"Nil string with data lenth: %ld", data.length);
      }

      outputHandler(output);
      [fh waitForDataInBackgroundAndNotify];
    }
  };

  NSPipe *pipe = [NSPipe pipe];
  [[pipe fileHandleForReading] waitForDataInBackgroundAndNotify];
  id pipeObserver = [[NSNotificationCenter defaultCenter] addObserverForName:NSFileHandleDataAvailableNotification
                                                                      object:[pipe fileHandleForReading]
                                                                       queue:[[NSOperationQueue alloc] init]
                                                                  usingBlock:notificationBlock];

  NSTask *task;
  task = [[NSTask alloc] init];
  if (workingDirectory) {
    [task setCurrentDirectoryPath:[workingDirectory stringByStandardizingPath]];
  }
  [task setLaunchPath:_executablePath];
  [task setArguments:[@[@"--no-color", @"--verbose"] arrayByAddingObjectsFromArray:arguments]];
  [task setStandardInput:[NSPipe pipe]];
  [task setStandardOutput:pipe];
  [task setStandardError:pipe];

  task.terminationHandler = ^(NSTask *task) {
    NSData *data = [[task.standardOutput fileHandleForReading] readDataToEndOfFile];
    NSString*output = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    outputHandler(output);
    completionHandler([task terminationStatus]);
    [[NSNotificationCenter defaultCenter] removeObserver:pipeObserver];
  };
  [task launch];
}

- (void)executeWithWorkingDirectory:(NSString*)workingDirectory arguments:(NSArray*)arguments outputHandler:(CPExecutableOutputBlock)outputHandler {
  [self executeWithWorkingDirectory:workingDirectory arguments:arguments outputHandler:outputHandler completionHandler:nil];
}

- (void)executeWithArguments:(NSArray*)arguments outputHandler:(CPExecutableOutputBlock)outputHandler {
  [self executeWithWorkingDirectory:nil arguments:arguments outputHandler:outputHandler];
}


@end
