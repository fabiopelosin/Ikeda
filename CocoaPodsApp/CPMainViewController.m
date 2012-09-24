//
//  CPMainViewController.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 11/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPMainViewController.h"
#import "Xcode.h"
#import "CoreData+MagicalRecord.h"
#import "BlocksKit.h"

#import "CPGemBridgeManager.h"
#import "CPPodfile.h"

#import "CPNavigationViewController.h"
#import "CPSpecsViewController.h"
#import "CPPodfileViewController.h"

NSString *const kPodsSectionIdentifier     = @"kPodsSectionIdentifier";
NSString *const kProjectsSectionIdentifier = @"kProjectsSectionIdentifier";
NSString *const kReposSectionIdentifier    = @"kReposSectionIdentifier";

NSString *const kAllPodsItemIdentifier    = @"kAllPodsItemIdentifier";
NSString *const kIOSPodsItemIdentifier    = @"kIOSPodsItemIdentifier";
NSString *const kOSXPodsItemIdentifier    = @"kOSXPodsItemIdentifier";
NSString *const kIOSOSXPodsItemIdentifier = @"kIOSOSXPodsItemIdentifier";

@interface CPMainViewController () <CPSourceListDelegate, CPNavigationViewControllerDelegate> {
  CPNavigationViewController *_currentNavigationController;
  CPNavigationViewController *_prevNavigationController;
  CPSpecsViewController *_currentSpecsViewController;

  CPSourceListItem *_podsSectionItem;
  CPSourceListItem *_openProjectsSectionItem;
  CPSourceListItem *_projectsSectionItem;
  CPSourceListItem *_allPodsItem;
}

@end

@implementation CPMainViewController

- (void)awakeFromNib {
  [super awakeFromNib];
  _selectionView.backgroundColor = [NSColor underPageBackgroundColor];

  _statusBarBorderView.borderColor = [NSColor colorWithCalibratedRed:0.676 green:0.669 blue:0.706 alpha:1.000];
  _statusBarBorderView.borderHighlightColor = [NSColor colorWithCalibratedWhite:0.698 alpha:1.000];
  _statusBarBorderView.shadowColor = nil;

  _sourceListView.selectionDelegate = self;
  [self updateSourceList];

  // Update the version label.
  [[CPGemBridgeManager sharedInstance] versionWithCompletionHandler:^(NSString *version) {
    _versionLabel.stringValue = [NSString stringWithFormat:@"Powered by CocoaPods %@", version];
  }];

  // Update the list of the open projects.
  [[NSNotificationCenter defaultCenter]
   addObserverForName:NSApplicationWillBecomeActiveNotification
   object:nil
   queue:[NSOperationQueue mainQueue]
   usingBlock:^(NSNotification *note){ [self updateSourceList]; }];

  // Update the status bar.
  [[NSNotificationCenter defaultCenter]
   addObserverForName:kCPGemBridgeManagerDidStartUpdateNotification
   object:nil
   queue:[NSOperationQueue mainQueue]
   usingBlock:^(NSNotification *note){
     [self updateSourceList];
     [_activityIndicator startAnimation:nil];
     [_statusLabel setHidden:FALSE];
     NSString *operationString = note.userInfo[kCPGemBridgeManagerNotificationHumarReadableKey];
     [_statusLabel setStringValue:[NSString stringWithFormat:@"%@...", operationString]];
   }];

  // Update the count for the Pods and the status bar.
  [[NSNotificationCenter defaultCenter]
   addObserverForName:kCPGemBridgeManagerDidCompleteUpdateNotification
   object:nil
   queue:[NSOperationQueue mainQueue]
   usingBlock:^(NSNotification *note){
     [self updateSourceList];
     [_activityIndicator stopAnimation:nil];
     [_statusLabel setHidden:TRUE];
   }];

}

- (void)updateSourceList {

  // Pods section
	_podsSectionItem = [CPSourceListItem itemWithTitle:@"PODS" identifier:kPodsSectionIdentifier];
  _podsSectionItem.alwaysExpanded = TRUE;
  _allPodsItem = [CPSourceListItem itemWithTitle:@"View All" identifier:kCPGemBridgeManagerNoSpecFilter];
  [_podsSectionItem setChildren:@[
   _allPodsItem,
   [CPSourceListItem itemWithTitle:@"Supporting iOS" identifier:kCPGemBridgeManagerIOSSpecFilter],
   [CPSourceListItem itemWithTitle:@"Supporting OSX" identifier:kCPGemBridgeManagerOSXSpecFilter],
   [CPSourceListItem itemWithTitle:@"Supporting Both" identifier:kCPGemBridgeManagerBothPlatformsSpecFilter]
   ]];

  // Open projects section
  _openProjectsSectionItem = [CPSourceListItem itemWithTitle:@"OPEN PROJECTS" identifier:kProjectsSectionIdentifier];
  _openProjectsSectionItem.alwaysExpanded = TRUE;

  // User opened projects section
  if (!_projectsSectionItem) {
    _projectsSectionItem = [CPSourceListItem itemWithTitle:@"PROJECTS" identifier:kProjectsSectionIdentifier];
    _projectsSectionItem.children = @[];
    _projectsSectionItem.alwaysExpanded = TRUE;
  }

  // Update pods badges
  [_podsSectionItem.children each:^(CPSourceListItem *podsItem) {
    podsItem.badgeValue = [[CPGemBridgeManager sharedInstance] specsCountWithFilter:podsItem.identifier];
  }];

  // Add open projects
  NSMutableArray *projectsItemChildren = [NSMutableArray new];
  XcodeApplication *xcode = [SBApplication applicationWithBundleIdentifier:@"com.apple.dt.Xcode"];
  [[xcode projects] enumerateObjectsUsingBlock:^(XcodeProject *project, NSUInteger idx, BOOL *stop) {
    if (![project.name isEqualToString:@"Pods"]) {
      CPSourceListItem *projectItem = [CPSourceListItem itemWithTitle:project.name identifier:project.projectDirectory];
      [projectsItemChildren addObject:projectItem];
    }
  }];
  _openProjectsSectionItem.children = projectsItemChildren;


  NSMutableArray *sourceListItems = [[NSMutableArray alloc] init];
	[sourceListItems addObject:_podsSectionItem];
	[sourceListItems addObject:_openProjectsSectionItem];
  if (_projectsSectionItem.children.count != 0) {
    [sourceListItems addObject:_projectsSectionItem];
  }
  _sourceListView.items = sourceListItems;
}

- (void)showNavigationControllerWithRoot:(CPNavigableViewController*)vc {
  [_currentNavigationController.view removeFromSuperview];
  CPNavigationViewController *nav = [[CPNavigationViewController alloc] initWithRootViewController:vc];
  nav.view.frame = _selectionView.bounds;
  nav.view.autoresizingMask = NSViewHeightSizable | NSViewWidthSizable;
  nav.searchField = _searchField;
  nav.segmentedControl = _segmentedControl;
  nav.delegate = self;
  [_selectionView addSubview:nav.view];
  // TODO: Apparently the table view crashes if scrolling when the view controller is removed from the super view;
  _prevNavigationController = _currentNavigationController;
  _currentNavigationController = nav;
}

- (BOOL) openFile:(NSString*)filename {
  NSString *name = [[filename lastPathComponent] stringByDeletingPathExtension];
  NSString *extension = [filename pathExtension];

  BOOL isPodfile   = ([name caseInsensitiveCompare:@"Podfile"] == NSOrderedSame);
  BOOL isProject   = ([extension caseInsensitiveCompare:@"xcodeproj"] == NSOrderedSame);
  BOOL isWorkspace = ([extension caseInsensitiveCompare:@"xcworkspace"] == NSOrderedSame);

  if (!isPodfile && !isProject && !isWorkspace) {
    return FALSE;
  }

  CPPodfile *podfile = [CPPodfile new];
  [podfile setProjectPath:[filename stringByDeletingLastPathComponent]];

  __block CPSourceListItem *projectItem;
  [_projectsSectionItem.children enumerateObjectsUsingBlock:^(CPSourceListItem *item, NSUInteger idx, BOOL *stop) {
    if ([item.identifier isEqualToString:podfile.projectPath]) {
      projectItem = item;
      *stop = TRUE;
    }
  }];

  if (!projectItem) {
    projectItem = [CPSourceListItem itemWithTitle:podfile.projectName identifier:podfile.projectPath];
    NSMutableArray *mutableChildren = [_projectsSectionItem.children mutableCopy];
    [mutableChildren addObject:projectItem];
    [_projectsSectionItem setChildren:[mutableChildren copy]];
    [self updateSourceList];
  }

  [_sourceListView selectItem:projectItem];
  return TRUE;
}


#pragma mark - CPSourceListDelegate

- (void)sourceListSelectionDidChange:(CPSourceListItem*)item {
  if ([item.topParentIdentifier isEqualToString:kPodsSectionIdentifier]) {
    CPSpecsViewController* vc = [[CPSpecsViewController alloc] initWithNibName:@"CPSpecsViewController" bundle:nil];
    _currentSpecsViewController = vc;
    [vc setSpecsFilter:item.identifier];
    [self showNavigationControllerWithRoot:vc];
  } else {
    _currentSpecsViewController = nil;
    
    if ([item.topParentIdentifier isEqualToString:kProjectsSectionIdentifier]) {
      CPPodfile *podfile = [CPPodfile new];
      [podfile setProjectPath:item.identifier];
      CPPodfileViewController *vc = [[CPPodfileViewController alloc] initWithNibName:@"CPPodfileViewController" bundle:nil];
      [vc setPodfile:podfile];
    [self showNavigationControllerWithRoot:vc];
    } else {
      [NSException raise:NSInternalInconsistencyException format:@"Unhandled item with identifier %@", item.identifier];
    }
  }
}


#pragma mark - CPNavigationViewControllerDelegate

- (void)navigationViewController:(CPNavigationViewController*)nav didNotManageSearchTerm:(NSString*)searchTerm {
  [_sourceListView selectItem:_allPodsItem];
  // TODO:remove the selection
}



@end
