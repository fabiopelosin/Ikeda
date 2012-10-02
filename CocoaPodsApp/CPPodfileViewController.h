//
//  CPPodfileViewController.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 15/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CPNavigationViewController.h"
#import "CPPodfile.h"
#import "CPBackgroundView.h"
#import "DSSyntaxTextView.h"

@interface CPPodfileViewController : CPNavigableViewController

@property (strong) IBOutlet CPBackgroundView *backgroundView;
@property (unsafe_unretained) IBOutlet DSSyntaxTextView *textView;

@property (nonatomic, strong) CPPodfile* podfile;

@end
