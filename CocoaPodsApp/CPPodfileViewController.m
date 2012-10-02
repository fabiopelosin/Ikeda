//
//  CPPodfileViewController.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 15/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPPodfileViewController.h"
#import "CPAppDelegate.h"
#import "CPPodfileSyntaxDefinition.h"
#import "CPSyntaxTheme.h"

@interface CPPodfileViewController ()

@end

@implementation CPPodfileViewController {
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(NSApplicationWillBecomeActiveNotification:) name:NSApplicationWillBecomeActiveNotification object:nil];
  }
  return self;
}

- (void)NSApplicationWillBecomeActiveNotification:(NSNotification*)notification {
  [_textView setString:[_podfile stringReppresentation]];
}

- (void)dealloc {
  [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)setPodfile:(CPPodfile *)podfile {
  _podfile = podfile;
  [_textView setString:[_podfile stringReppresentation]];

}

- (void)awakeFromNib {
  CPBackgroundView *backgroundView = (CPBackgroundView *)self.view;
  backgroundView.backgroundColor = [NSColor colorWithCalibratedWhite:0.97f alpha:1.f];
  [_textView setTheme:[CPSyntaxTheme new]];
  [_textView setSyntaxDefinition:[CPPodfileSyntaxDefinition new]];
  [_textView setString:[_podfile stringReppresentation]];
  [_textView.lineNumberView setBackgroundColor:[NSColor colorWithCalibratedWhite:0.974 alpha:1.000]];
  [_textView.lineNumberView setTextColor:[NSColor colorWithCalibratedWhite:0.7 alpha:1.000]];
  [_textView setTextContainerInset:NSMakeSize(10.f, 10.f)];
  [_textView setLineNumbersVisible:TRUE];
}

- (IBAction)openPodfileAction:(NSButton*)sender {
  [[NSWorkspace sharedWorkspace] openFile:[_podfile path]];
}

- (void) runExecutableWithTitle:(NSString*)title arguments:(NSArray*)arguments {
  [_textView.string writeToFile:_podfile.path
                     atomically:YES
                       encoding:NSUTF8StringEncoding
                          error:nil];

  CPAppDelegate *appDelegate = [NSApp delegate];
  [appDelegate runExecutableWithTitle:title
                            arguments:arguments
                     workingDirectory:_podfile.projectPath];
}

- (IBAction)installAction:(NSButton*)sender {
  NSString *title = @"Install";
  NSArray *arguments = @[@"install"];
  if (([[NSApp currentEvent] modifierFlags] & NSAlternateKeyMask) != 0) {
    title = [title stringByAppendingString:@" (no repo update)"];
    arguments = [arguments arrayByAddingObject:@"--no-update"];
  }
  [self runExecutableWithTitle:title arguments:arguments];
}

- (IBAction)updateAction:(NSButton*)sender {
  NSString *title = @"Update";
  NSArray *arguments = @[@"update"];
  if (([[NSApp currentEvent] modifierFlags] & NSAlternateKeyMask) != 0) {
    title = [title stringByAppendingString:@" (no repo update)"];
    arguments = [arguments arrayByAddingObject:@"--no-update"];
  }
  [self runExecutableWithTitle:title arguments:arguments];
}

- (IBAction)docsButtonAction:(id)sender {
  NSURL *url = [NSURL URLWithString:@"https://github.com/CocoaPods/CocoaPods/wiki/Dependency-declaration-options"];
  [[NSWorkspace sharedWorkspace] openURL:url];
}

@end
