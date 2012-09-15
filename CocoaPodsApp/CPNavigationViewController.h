//
//  CPNavigationViewController.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 15/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class CPNavigableViewController;
@protocol CPNavigationViewControllerDelegate;

/** Navigation view controller.

 This view controller wraps an NSPageController to present a hierarchy of view
  controllers.

  It is possible to pass a NSSegmentedControl that will be used as a back and
  forward buttons. The CPNavigationViewController takes care of disabling and
  enabling the segments and responding to their actions. This control is intended
  to be unique for the window.

  It is also possible to pass a NSSearchField that will be used to handle
  window wide search. When a new search field is passed the
  CPNavigationViewController takes care of clearing it contents. When the value
  in the field changes the segmented control starts a backward search to find
  the front most child that adopts the CPNavigationViewControllerSearchProtocol.
  If a control that adopts it is found, it is presented if needed and it is
  notified of the change in the search term. If no suitable control can be found
  the Navigation view controller informs its delegate.
 */
@interface CPNavigationViewController : NSViewController


///-----------------------------------------------------------------------------
/// @name Initialization
///-----------------------------------------------------------------------------

- initWithRootViewController:(CPNavigableViewController*)controller;

@property (nonatomic, strong) NSSearchField *searchField;

@property (nonatomic, strong) NSSegmentedControl *segmentedControl;

@property (nonatomic, assign) id<CPNavigationViewControllerDelegate> delegate;


///-----------------------------------------------------------------------------
/// @name Navigation
///-----------------------------------------------------------------------------

- (void)pushViewController:(NSViewController*)controller;

- (void)popViewController;

@end

/** Protocol for the delegate of the navigation view controller.

 The delegate of the navigation view controler is responsible of handling
  search that can't be managed by a child view controller.
*/
@protocol CPNavigationViewControllerDelegate <NSObject>

/** Notification of a unhandled search.

 @param vc The navigation view controller.
 @param searchTerm The string value of the unhandled search.
 */
- (void)navigationViewController:(CPNavigationViewController*)vc
          didNotManageSearchTerm:(NSString*)searchTerm;

@end

/** Protocol that can be adopted by child view controllers to support search.

 This protocol has only a method that notifies the view controller about the
  changed value in the search field managed by the navigation view controller.
  By adopting it a view controller declares that it supports presentation of
  search results.
 */
@protocol CPNavigationViewControllerSearchProtocol <NSObject>

/** Notification of change in the search string.

 The target view controller is responsible of displaying the results in
  accordance to the search term.

 @param vc The navigation view controller.
 @param searchTerm The string value of the unhandled search.
 */
- (void)navigationViewController:(CPNavigationViewController*)vc
             didUpdateSearchTerm:(NSString*)searchTerm;

@end

/** Navigable view controller.
 
 Plain vanilla sublcass of NSViewController that can store the navigation view
  controller that presented it and respond to view envents.
 */
@interface CPNavigableViewController : NSViewController

@property (nonatomic, assign) CPNavigationViewController *navigationController;

- (void)viewWillAppear;
- (void)viewDidAppear;

@end

