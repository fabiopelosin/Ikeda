//
//  CPAppDelegate.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 01/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "INAppStoreWindow.h"

@interface CPAppDelegate : NSObject <NSApplicationDelegate, NSWindowDelegate>

@property (assign) IBOutlet INAppStoreWindow *window;

- (void)runExecutableWithTitle:(NSString*)title arguments:(NSArray*)arguments workingDirectory:(NSString*)workingDirectory;

@end
