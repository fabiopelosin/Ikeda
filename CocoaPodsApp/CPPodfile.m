//
//  CPPodfile.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 12/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPPodfile.h"

@implementation CPPodfile

- (id)init
{
  self = [super init];
  if (self) {
    _commandOutputs = [NSMutableArray new];
  }
  return self;
}

- (NSString*)path {
  // Need to support for podfile that specigy a relative project path
  // Likely this information needs to be stored in the xcodeproj
  return [_projectPath stringByAppendingPathComponent:@"/Podfile"];
}

- (NSString *)projectName {
  NSFileManager *fm = [NSFileManager defaultManager];
  NSArray *dirContents = [fm contentsOfDirectoryAtPath:_projectPath error:nil];
  NSPredicate *fltr = [NSPredicate predicateWithFormat:@"self ENDSWITH '.xcodeproj'"];
  NSArray *projects = [dirContents filteredArrayUsingPredicate:fltr];
  NSString *projectName = [[projects[0] lastPathComponent] stringByDeletingPathExtension];
  return projectName;
}

- (NSString*)stringReppresentation {
  NSString *string = [NSString stringWithContentsOfFile:[self path] encoding:NSUTF8StringEncoding error:nil];
  if (!string) {
    string = @"";
  }
  return string;
}

- (void)openInExternalEditor {
  [[NSWorkspace sharedWorkspace] openFile:[self path]];
}

- (void)startNewCommandOutput {
  _lastCommandOutput = [NSMutableString new];
  [_commandOutputs addObject:_lastCommandOutput];
}

@end
