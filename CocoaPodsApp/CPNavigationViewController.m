//
//  CPNavigationViewController.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 15/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPNavigationViewController.h"

@interface CPNavigationViewController () <NSPageControllerDelegate, NSTextFieldDelegate>

@end

@implementation CPNavigationViewController {
  NSPageController *_pageController;
  NSViewController *_rootViewController;
}

- initWithRootViewController:(CPNavigableViewController*)controller; {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
      _rootViewController = controller;
      NSView* view = [[NSView alloc] initWithFrame:CGRectZero];
      _pageController = [NSPageController new];
      _pageController.view = [[NSView alloc] initWithFrame:view.bounds];
      _pageController.view.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
      _pageController.delegate = self;
      [view addSubview:_pageController.view];
      self.view = view;

      [self pushViewController:controller];
//      _pageController.transitionStyle = NSPageControllerTransitionStyleHorizontalStrip;
    }
    return self;
}

- (void)setSearchField:(NSSearchField *)searchField {
  _searchField = searchField;
  _searchField.delegate = self;
  _searchField.stringValue = @"";
}

- (void)setSegmentedControl:(NSSegmentedControl *)segmentedControl {
  _segmentedControl = segmentedControl;
  [_segmentedControl setTarget:self];
  [_segmentedControl setAction:@selector(segmentedControlAction:)];
  [self updateSegementedControl];
}

- (void)segmentedControlAction:(NSSegmentedControl*)sender {
  if (sender.selectedSegment == 0) {
    [self navigateBack:sender];
  } else {
    [self navigateForward:sender];
  }
}

- (void)updateSegementedControl {
  BOOL canGoBack = _pageController.selectedIndex != 0;
  BOOL canGoForward = _pageController.selectedIndex != (_pageController.arrangedObjects.count - 1);
  [_segmentedControl setEnabled:canGoBack forSegment:0];
  [_segmentedControl setEnabled:canGoForward forSegment:1];
}

- (void)pushViewController:(NSViewController*)vc {
  [_pageController navigateForwardToObject:vc];
  [self showViewController:vc];
}

- (void)showViewController:(NSViewController*)vc {
  [_pageController.view.subviews.lastObject removeFromSuperview];
  vc.view.frame = self.view.bounds;
  vc.view.autoresizingMask = NSViewHeightSizable | NSViewWidthSizable;
  [_pageController.view addSubview:vc.view];
  if ([vc isKindOfClass:[CPNavigableViewController class]]) {
    CPNavigableViewController *navigableVC = (CPNavigableViewController *)vc;
    navigableVC.navigationController = self;
  }
  [self updateSegementedControl];
}

- (void)popViewController {
  [self navigateBack:nil];
}

- (void)navigateBack:(id)sender {
  [_pageController navigateBack:sender];
}

- (void)navigateForward:(id)sender {
  [_pageController navigateForward:sender];
}



#pragma mark - NSPageControllerDelegate

- (void)pageControllerWillStartLiveTransition:(NSPageController *)pageController {
}

- (void)pageController:(NSPageController *)pageController didTransitionToObject:(NSViewController*)vc {
  if ([vc isKindOfClass:[CPNavigableViewController class]]) {
    CPNavigableViewController *navigableVC = (CPNavigableViewController *)vc;
    [navigableVC viewWillAppear];
  }
  [self showViewController:vc];
}

- (void)pageControllerDidEndLiveTransition:(NSPageController *)pageController {
  [_pageController completeTransition];
  NSViewController* vc = _pageController.arrangedObjects[_pageController.selectedIndex];
  if ([vc isKindOfClass:[CPNavigableViewController class]]) {
    CPNavigableViewController *navigableVC = (CPNavigableViewController *)vc;
    [navigableVC viewDidAppear];
  }
}


#pragma mark - Search Field

// TODO: switch to book based pageview controller for live layers?
- (void)controlTextDidChange:(NSNotification *)obj {
  __block CPNavigableViewController<CPNavigationViewControllerSearchProtocol> *searchableVC;
  [_pageController.arrangedObjects enumerateObjectsUsingBlock:^(CPNavigableViewController *vc, NSUInteger idx, BOOL *stop) {
    if ([vc conformsToProtocol:@protocol(CPNavigationViewControllerSearchProtocol)]) {
      searchableVC = (CPNavigableViewController<CPNavigationViewControllerSearchProtocol>*)vc;
      *stop = true;
    }
  }];

  if (searchableVC) {
    NSUInteger idx = [_pageController.arrangedObjects indexOfObject:searchableVC];
    if (_pageController.selectedIndex != idx) {
      [NSAnimationContext runAnimationGroup:^(NSAnimationContext *context) {
        [[_pageController animator] setSelectedIndex:idx];
      } completionHandler:^{
        [_pageController completeTransition];
      }];
    }
    [searchableVC navigationViewController:self didUpdateSearchTerm:_searchField.stringValue];
  } else {
    [self.delegate navigationViewController:self didNotManageSearchTerm:_searchField.stringValue];
  }
}

@end


@implementation CPNavigableViewController

- (void)viewWillAppear {}
- (void)viewDidAppear  {}

@end

