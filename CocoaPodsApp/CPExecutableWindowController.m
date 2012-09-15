//
//  CPExecutableWindowController.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 18/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPExecutableWindowController.h"
#import "SNRHUDTextView.h"
#import "CPExecutableManager.h"

@interface CPExecutableWindowController ()

@property (weak) IBOutlet NSTextField *TitleTextField;
@property (unsafe_unretained) IBOutlet SNRHUDTextView *textView;
@property (weak) IBOutlet NSButton *doneButton;
@property (weak) IBOutlet NSProgressIndicator *activityIndicator;

@property (nonatomic, strong) NSMutableString* executableOutput;
@property (weak) IBOutlet NSTextField *resultLabel;

@end

@implementation CPExecutableWindowController

- (id)initWithWindow:(NSWindow *)window
{
  self = [super initWithWindow:window];
  if (self) {
  }

  return self;
}

- (void)windowDidLoad
{
  [super windowDidLoad];
}

- (void)awakeFromNib {
  [_TitleTextField setStringValue:_title];
  [_textView.textContainer setContainerSize:NSMakeSize(FLT_MAX, FLT_MAX)];
  [_textView.textContainer setWidthTracksTextView:NO];
  [_textView setHorizontallyResizable:YES];
}

- (void)setTitle:(NSString *)title {
  _title = title;
  [_TitleTextField setStringValue:title];
}

- (IBAction)stopModalAction:(id)sender {
  [NSApp stopModal];
  [NSApp endSheet: self.window];
  [self.window orderOut: self];
}

- (void)prepareToRun {
  [_activityIndicator startAnimation:nil];
  _executableOutput = [NSMutableString new];
  [_textView setString:_executableOutput];
}

- (void)executableDidGenerateOutput:(NSString*)output {
  [_executableOutput appendString:output];
  [_textView setString:_executableOutput];
  [_textView scrollToEndOfDocument:nil];
}

- (void)executableDidCompleteWithTerminationStatus:(int)terminationStatus {
  [_activityIndicator stopAnimation:nil];
  [_doneButton setEnabled:YES];
  [self.window makeFirstResponder:_doneButton];
  [self displayCompletionNotification:(terminationStatus == 0)];

  if (terminationStatus == 0) {
    [_resultLabel setTextColor:[NSColor colorWithCalibratedRed:0.000 green:0.693 blue:0.072 alpha:1.000]];
    [_resultLabel setStringValue:@"Sucess"];
  } else {
    [_resultLabel setTextColor:[NSColor colorWithCalibratedRed:0.700 green:0.000 blue:0.008 alpha:1.000]];
    [_resultLabel setStringValue:@"Failure"];
  }

  NSViewAnimation* theAnim = [[NSViewAnimation alloc] initWithViewAnimations:@[@{
                                                   NSViewAnimationTargetKey : _resultLabel,
                                                   NSViewAnimationEffectKey : NSViewAnimationFadeInEffect }]];
  [theAnim setDuration:.25];
  [theAnim setAnimationCurve:NSAnimationEaseIn];
  [theAnim startAnimation];
}

- (void)displayCompletionNotification:(BOOL)sucess {
  NSUserNotification *note = [NSUserNotification new];
  note.title = [NSString stringWithFormat:@"%@ completed.", _title];
  note.informativeText = sucess ? @"Sucess." : @"FAILURE!";

  [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:(NSUserNotification *)note];
  [note setSoundName:NSUserNotificationDefaultSoundName];
}

@end
