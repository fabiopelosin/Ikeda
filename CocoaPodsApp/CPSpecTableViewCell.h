//
//  CPPodTableViewCell.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 01/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "TUIKit.h"

@interface CPSpecTableViewCell : TUITableViewCell

@property (nonatomic, copy) NSAttributedString *title;
@property (nonatomic, copy) NSAttributedString *description;

@end
