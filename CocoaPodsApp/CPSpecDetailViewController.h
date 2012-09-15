//
//  CPSpecDetailViewController.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 14/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CPNavigationViewController.h"
#import "CocoaPodsModel.h"

@interface CPSpecDetailViewController : CPNavigableViewController

@property (nonatomic, strong) CPSpecification *spec;

@end
