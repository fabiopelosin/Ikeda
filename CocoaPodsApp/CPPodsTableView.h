//
//  CPPodsView.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 01/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "TUIKit.h"

@interface CPPodsTableView : TUIView <TUITableViewDelegate, TUITableViewDataSource>

@property (nonatomic, strong) NSArray *specs;

@end
