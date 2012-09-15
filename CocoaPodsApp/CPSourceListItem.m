//
//  CPSourceListItem.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 11/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPSourceListItem.h"


@implementation CPSourceListItem

- (id)init {
	if(self=[super init])
	{
		_badgeValue = -1;
	}

	return self;
}

+ (id)itemWithTitle:(NSString*)aTitle identifier:(NSString*)anIdentifier {
	return [[self class] itemWithTitle:aTitle identifier:anIdentifier icon:nil];
}

+ (id)itemWithTitle:(NSString*)aTitle identifier:(NSString*)anIdentifier icon:(NSImage*)anIcon {
	CPSourceListItem *item = [CPSourceListItem new];
	[item setTitle:aTitle];
	[item setIdentifier:anIdentifier];
	[item setIcon:anIcon];
	return item;
}

- (void)setChildren:(NSArray *)children {
  _children = children;
  [children enumerateObjectsUsingBlock:^(CPSourceListItem *child, NSUInteger idx, BOOL *stop) {
    child.parent = self;
  }];
}

- (NSString*)topParentIdentifier {
  if (_parent) {
    return [_parent topParentIdentifier];
  } else {
    return _identifier;
  }
}

- (BOOL)hasBadge {
	return _badgeValue!=-1;
}

- (BOOL)hasChildren {
	return _children.count > 0;
}

- (BOOL)hasIcon {
	return _icon!=nil;
}

@end
