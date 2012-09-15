//
//  CPMainViewController.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 11/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CPSourceList.h"
#import "CPBackgroundView.h"
#import "CPBorderView.h"

@interface CPMainViewController : NSViewController

@property (weak) IBOutlet CPSourceList *sourceListView;
@property (weak) IBOutlet NSTextField *versionLabel;
@property (weak) IBOutlet CPBackgroundView *selectionView;
@property (weak) IBOutlet NSProgressIndicator *activityIndicator;
@property (weak) IBOutlet CPBorderView *statusBarBorderView;
@property (weak) IBOutlet NSTextField *statusLabel;

@property (nonatomic, assign) NSSearchField *searchField;
@property (nonatomic, assign) NSSegmentedControl *segmentedControl;

- (BOOL) openFile:(NSString*)filename;

@end
