//
//  CPExecutableWindowController.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 18/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CPExecutableWindowController : NSWindowController

@property (nonatomic, strong) NSString *title;

- (void)prepareToRun;
- (void)executableDidGenerateOutput:(NSString*)output;
- (void)executableDidCompleteWithTerminationStatus:(NSInteger)terminationStatus;

@end
