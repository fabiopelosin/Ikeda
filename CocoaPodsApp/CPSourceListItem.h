//
//  CPSourceListItem.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 11/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CPSourceListItem : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *identifier;
@property (nonatomic) BOOL alwaysExpanded;

@property (nonatomic, retain) NSImage *icon;
@property NSInteger badgeValue;

@property (nonatomic, copy) NSArray *children;
@property (nonatomic, weak) CPSourceListItem* parent;

+ (id)itemWithTitle:(NSString*)aTitle identifier:(NSString*)anIdentifier;
+ (id)itemWithTitle:(NSString*)aTitle identifier:(NSString*)anIdentifier icon:(NSImage*)anIcon;

- (BOOL)hasBadge;
- (BOOL)hasChildren;
- (BOOL)hasIcon;
- (NSString*)topParentIdentifier;

@end
