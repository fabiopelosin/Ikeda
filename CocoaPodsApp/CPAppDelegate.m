//
//  CPAppDelegate.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 01/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPAppDelegate.h"
#import "CoreData+MagicalRecord.h"

#import "CPExecutableWindowController.h"
#import "CPGemBridgeManager.h"
#import "CPExecutableManager.h"
#import "CPMainViewController.h"

@interface CPAppDelegate ()

@end

@implementation CPAppDelegate {
  CPMainViewController *_mainViewController;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  [MagicalRecord setupAutoMigratingCoreDataStack];

  _mainViewController = [[CPMainViewController alloc] initWithNibName:@"CPMainViewController" bundle:nil];
  [self addWindowAcessoryViews];
  [_window setContentView:_mainViewController.view];
  [_window setTitleBarHeight:40.f];

  // Update after the Main View controller did start to listen for notifications
  [[CPGemBridgeManager sharedInstance] checkRepoCompatibiltyWithHandler:^(BOOL repoCompatible) {
    if (repoCompatible) {
      [[CPGemBridgeManager sharedInstance] updateSets];
    } else {
      [self runExecutableWithTitle:@"Pod setup" arguments:@[ @"setup" ] workingDirectory:nil completionHandler:^(int terminationStatus) {
        [[CPGemBridgeManager sharedInstance] updateSets];
      }];
    }
  }];
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)theApplication hasVisibleWindows:(BOOL)flag {
  [_window makeKeyAndOrderFront:self];
  return YES;
}

- (void)applicationWillTerminate:(NSNotification *)notification {
  [MagicalRecord cleanUp];
}

- (BOOL)application:(NSApplication *)sender openFile:(NSString *)filename {
  return [_mainViewController openFile:filename];
}

- (void)application:(NSApplication *)sender openFiles:(NSArray *)filenames {
  [filenames enumerateObjectsUsingBlock:^(NSString *filename, NSUInteger idx, BOOL *stop) {
    [_mainViewController openFile:filename];
  }];
}

- (void)addWindowAcessoryViews {
  NSView *titleBarView = _window.titleBarView;

  // Segmented Control
  CGFloat segmentedControlWith = 32.f * 2.f;
  NSRect segmentedControlFrame = NSMakeRect(240.f + 10.f, - (40.f - 20.f)/2.f,  segmentedControlWith, 22.0f);
  NSSegmentedControl *segmentedControl = [[NSSegmentedControl alloc] initWithFrame:segmentedControlFrame];
  [segmentedControl setAutoresizingMask:NSViewMaxXMargin | NSViewMinYMargin];
  [segmentedControl setSegmentCount:2];
  [segmentedControl.cell setTrackingMode:NSSegmentSwitchTrackingMomentary];
  [segmentedControl setImage:[NSImage imageNamed:@"NSLeftFacingTriangleTemplate"] forSegment:0];
  [segmentedControl setImage:[NSImage imageNamed:@"NSRightFacingTriangleTemplate"] forSegment:1];
  [titleBarView addSubview:segmentedControl];
  [_mainViewController setSegmentedControl:segmentedControl];

  // Search Field
  CGFloat searchFieldWith = 200.0f;
  NSRect searchFieldFrame = NSMakeRect(titleBarView.bounds.size.width -  searchFieldWith - 10.0f, - (40.f - 22.f)/2.f,  searchFieldWith, 22.0f);
  NSSearchField *searchField = [[NSSearchField alloc] initWithFrame:searchFieldFrame];
  [searchField.cell setControlSize:NSSmallControlSize];
  searchField.autoresizingMask = NSViewMinXMargin | NSViewMinYMargin;
  [titleBarView addSubview:searchField];
  _mainViewController.searchField = searchField;
}

- (NSRect)window:(NSWindow*)window willPositionSheet:(NSWindow *)sheet usingRect:(NSRect)rect {
  NSRect fieldRect = CGRectMake(60, _window.frame.size.height - _window.titleBarHeight, _window.frame.size.width -120, 0);
  return fieldRect;
}


#pragma mark - Executable

- (void)runExecutableWithTitle:(NSString*)title
                     arguments:(NSArray*)arguments
              workingDirectory:(NSString*)workingDirectory {
  [self runExecutableWithTitle:title
                     arguments:arguments
              workingDirectory:workingDirectory
             completionHandler:nil];
}

- (void)runExecutableWithTitle:(NSString*)title
                     arguments:(NSArray*)arguments
              workingDirectory:(NSString*)workingDirectory
             completionHandler:(CPExecutableCompletionBlock)completionHandle {
  // TODO: cache the window
  // TODO: output seems buffered again!
  CPExecutableWindowController* execController =[[CPExecutableWindowController alloc] initWithWindowNibName:@"CPExecutableWindowController"];
  [execController setTitle:title];
  [NSApp beginSheet: execController.window
     modalForWindow: self.window
      modalDelegate: nil
     didEndSelector: nil
        contextInfo: nil];

  CPExecutableOutputBlock outputHandler = ^(NSString *output) {
    dispatch_async(dispatch_get_main_queue(), ^ {
      if (output) {
        [execController executableDidGenerateOutput:output];
      }
    });
  };

  CPExecutableCompletionBlock controllerCompletionHandle = ^(int terminationStatus) {
    dispatch_async(dispatch_get_main_queue(), ^ {
      if (completionHandle) {
        completionHandle(terminationStatus);
      }
      [execController executableDidCompleteWithTerminationStatus:terminationStatus];
    });
  };

  NSModalSession session = [NSApp beginModalSessionForWindow:execController.window];
  [execController prepareToRun];
  [[CPExecutableManager sharedInstance] executeWithWorkingDirectory:workingDirectory
                                                          arguments:arguments
                                                      outputHandler:outputHandler
                                                  completionHandler:controllerCompletionHandle];

  NSInteger result = NSRunContinuesResponse;
  while (result == NSRunContinuesResponse) {
    result = [NSApp runModalSession:session];
    [[NSRunLoop currentRunLoop] limitDateForMode:NSDefaultRunLoopMode];
  }
  [NSApp endModalSession:session];
}

@end
