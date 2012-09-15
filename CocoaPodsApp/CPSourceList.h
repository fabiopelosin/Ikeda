//
//  CPSourceList.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 12/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "PXSourceList.h"
#import "CPSourceListItem.h"

@protocol CPSourceListDelegate;

@interface CPSourceList : PXSourceList <PXSourceListDataSource, PXSourceListDelegate>

@property (nonatomic, copy) NSArray *items;
@property (nonatomic, assign) id<CPSourceListDelegate> selectionDelegate;

- (void)selectItem:(CPSourceListItem*)item;

@end

@protocol CPSourceListDelegate <NSObject>

/** Notifies only if the identifier of the item actually did change. */
- (void)sourceListSelectionDidChange:(CPSourceListItem*)item;

@end

