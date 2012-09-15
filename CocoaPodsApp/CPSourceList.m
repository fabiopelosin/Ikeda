//
//  CPSourceList.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 12/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPSourceList.h"

@interface PXSourceList (internalMethods)

- (NSSize)sizeOfBadgeAtRow:(NSInteger)rowIndex;
- (void)drawBadgeForRow:(NSInteger)rowIndex inRect:(NSRect)badgeFrame;
- (void)registerDelegateToReceiveNotification:(NSString*)notification withSelector:(SEL)selector;

@end

@implementation CPSourceList {
  BOOL _disableDelegateNotifications;
  BOOL _didInitialNotification;
  NSString *_selectedItemIdentifier;
}

- (id)initWithCoder:(NSCoder *)coder {
  self = [super initWithCoder:coder];
  if (self) {
    self.delegate = self;
    self.dataSource = self;
  }
  return self;
}

// Don't draw the badge if not selected
- (void)drawBadgeForRow:(NSInteger)rowIndex inRect:(NSRect)badgeFrame {
	if([[self selectedRowIndexes] containsIndex:rowIndex]) {
    [super drawBadgeForRow:rowIndex inRect:badgeFrame];
  }
}

- (void)drawRect:(NSRect)dirtyRect {
  [super drawRect:dirtyRect];

  CGRect lineRect = CGRectMake(self.bounds.size.width - 1.f, 0, 1.f, self.bounds.size.height);
  [[NSColor colorWithCalibratedRed:0.794 green:0.825 blue:0.859 alpha:1.000] setFill];
  [NSBezierPath fillRect:lineRect];
}

- (void)setItems:(NSArray *)items {
  if ([items isEqualToArray:_items]) {
    return;
  }
  
  _items = items;
  _disableDelegateNotifications = TRUE;
  [self reloadData];
  _disableDelegateNotifications = FALSE;
  NSIndexSet *selection = [self indexOfRowWithIdentifier:_selectedItemIdentifier];
  [self selectRowIndexes:selection byExtendingSelection:NO];

  if (!_didInitialNotification) {
    [self sourceListSelectionDidChange:nil];
  }
}

/** Asumes a two level hierary. Returns nil if it can't find the row. */
- (NSIndexSet *)indexOfRowWithIdentifier:(NSString*)identifier {
  __block NSIndexSet *indexSet;

  NSMutableArray* rows = [NSMutableArray new];
  [_items enumerateObjectsUsingBlock:^(CPSourceListItem* item, NSUInteger idx, BOOL *stop) {
    [rows addObject:item];
    [rows addObjectsFromArray:item.children];
  }];
  
  [rows enumerateObjectsUsingBlock:^(CPSourceListItem* item, NSUInteger idx, BOOL *stop) {
    if ([item.identifier isEqualToString:identifier]) {
      indexSet = [NSIndexSet indexSetWithIndex:idx];
      *stop = TRUE;
    }
  }];

  return indexSet;
}


#pragma mark - Selection

- (void)selectItem:(CPSourceListItem*)item {
  NSMutableArray* rows = [NSMutableArray new];
  [_items enumerateObjectsUsingBlock:^(CPSourceListItem* item, NSUInteger idx, BOOL *stop) {
    [rows addObject:item];
    [rows addObjectsFromArray:item.children];
  }];

  NSUInteger index = [rows indexOfObject:item];
  if (index == NSNotFound) {
    [NSException raise:NSInternalInconsistencyException format:@"Item not found %@", item];
  }
  NSIndexSet *indexSet = [NSIndexSet indexSetWithIndex:index];
  [super selectRowIndexes:indexSet byExtendingSelection:NO];
}


/* Select the firs child if the selection is nil */
- (void)selectRowIndexes:(NSIndexSet *)indexes byExtendingSelection:(BOOL)extend {
  if (!indexes) {
    indexes = [NSIndexSet indexSetWithIndex:1];
  }
  [super selectRowIndexes:indexes byExtendingSelection:extend];
}


#pragma mark - PXSourceListDataSource

- (NSUInteger)sourceList:(PXSourceList*)sourceList numberOfChildrenOfItem:(CPSourceListItem*)item {
	if(item) {
    return [[item children] count];
	} else {
		return [_items count];
	}
}

- (id)sourceList:(PXSourceList*)aSourceList child:(NSUInteger)index ofItem:(CPSourceListItem*)item {
	if(item) {
		return [[item children] objectAtIndex:index];
	} else {
		return [_items objectAtIndex:index];
	}
}

- (id)sourceList:(PXSourceList*)aSourceList objectValueForItem:(CPSourceListItem*)item {
	return [item title];
}


- (void)sourceList:(PXSourceList*)aSourceList setObjectValue:(id)object forItem:(CPSourceListItem*)item {
	[item setTitle:object];
}


- (BOOL)sourceList:(PXSourceList*)aSourceList isItemExpandable:(CPSourceListItem*)item {
	return [item hasChildren];
}


- (BOOL)sourceList:(PXSourceList*)aSourceList itemHasBadge:(CPSourceListItem*)item {
	return [item hasBadge];
}


- (NSInteger)sourceList:(PXSourceList*)aSourceList badgeValueForItem:(CPSourceListItem*)item {
	return [item badgeValue];
}


- (BOOL)sourceList:(PXSourceList*)aSourceList itemHasIcon:(CPSourceListItem*)item {
	return [item hasIcon];
}


- (NSImage*)sourceList:(PXSourceList*)aSourceList iconForItem:(CPSourceListItem*)item {
	return [item icon];
}


#pragma mark - PXSourceListDelegate

- (BOOL)sourceList:(PXSourceList*)aSourceList isGroupAlwaysExpanded:(CPSourceListItem*)group {
  return [group alwaysExpanded];
}

- (void)sourceListSelectionDidChange:(NSNotification *)notification {
  if (_disableDelegateNotifications) {
    return;
  }

  CPSourceListItem *item = [self itemAtRow:self.selectedRow];
  if (![item.identifier isEqualToString:_selectedItemIdentifier]) {
    _didInitialNotification = TRUE;
    [self.selectionDelegate sourceListSelectionDidChange:item];
    _selectedItemIdentifier = item.identifier;
  }
}

@end
