//
//  CPSpecsViewController.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 14/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CPNavigationViewController.h"
#import "CocoaPodsModel.h"
#import "CPGemBridgeManager.h"

@interface CPSpecsViewController : CPNavigableViewController <CPNavigationViewControllerSearchProtocol>

@property (nonatomic, copy) NSString *specsFilter;

@property (strong) IBOutlet NSArrayController *specsArrayController;
@property (nonatomic, readonly) NSPredicate *predicate;
@property (nonatomic, readonly) NSArray *sortDescriptors;
@property (nonatomic, readonly) NSArray *specs;
@property (weak) IBOutlet NSTableView *tableView;
@property () BOOL empty;

@end
