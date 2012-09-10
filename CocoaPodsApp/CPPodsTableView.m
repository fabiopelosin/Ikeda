//
//  CPPodsView.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 01/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPPodsTableView.h"
#import "CPSpecTableViewCell.h"
#import "CPSpec.h"

#define	CPSearchFieldAnyfilter     0
#define	CPSearchFieldIOSfilter     1
#define	CPSearchFieldOSXfilter     2
#define	CPSearchFieldBothfilter    3


@interface CPPodsTableView () <NSTextFieldDelegate>

@end

@implementation CPPodsTableView {
	TUITableView *_tableView;
	TUIFont *titleFont;
	TUIFont *descFont;
  NSDictionary *cellHeights;
}

- (id)initWithFrame:(CGRect)frame
{
	if((self = [super initWithFrame:frame])) {
		self.backgroundColor = [TUIColor colorWithWhite:0.9 alpha:1.0];

		titleFont = [TUIFont fontWithName:@"HelveticaNeue" size:15];
		descFont = [TUIFont fontWithName:@"HelveticaNeue" size:13];

		CGRect b = self.bounds;
    //		b.origin.y -= 30;
		b.size.height -= 60;

		_tableView = [[TUITableView alloc] initWithFrame:b];
		_tableView.autoresizingMask = TUIViewAutoresizingFlexibleSize;
		_tableView.dataSource = self;
		_tableView.delegate = self;
		_tableView.maintainContentOffsetAfterReload = TRUE;
		[self addSubview:_tableView];

		b = CGRectMake(0, self.bounds.size.height - 60, self.bounds.size.width, 60);
		TUIView* searchContainer = [[TUIView alloc] initWithFrame:b];
		searchContainer.backgroundColor = [TUIColor colorWithWhite:0.2 alpha:1.0];
		searchContainer.autoresizingMask = TUIViewAutoresizingFlexibleWidth | TUIViewAutoresizingFlexibleBottomMargin;
		[self addSubview:searchContainer];

    CGRect searchRect = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
    NSSearchField* searchView = [[NSSearchField alloc] initWithFrame:searchRect];
    [searchView sizeToFit];
    searchView.frame = CGRectMake(15,15,self.bounds.size.width -30,searchView.frame.size.height);
    TUIViewNSViewContainer *container = [[TUIViewNSViewContainer alloc] initWithNSView:searchView];
    container.backgroundColor = [TUIColor clearColor];
    [searchContainer addSubview:container];
    searchView.delegate = self;



    _specsArrayController = [NSArrayController new];

    {
      NSMenu *cellMenu = [[NSMenu alloc] initWithTitle:NSLocalizedString(@"Search Menu", @"Search Menu title")];
      NSMenuItem *item;

      item = [[NSMenuItem alloc] initWithTitle:@"iOS or OSX" action:@selector(setSearchCategoryFrom:) keyEquivalent:@""];
      [item setTarget:self];
      [item setTag:CPSearchFieldAnyfilter];
      [cellMenu insertItem:item atIndex:0];

      item = [[NSMenuItem alloc] initWithTitle:@"iOS" action:@selector(setSearchCategoryFrom:) keyEquivalent:@""];
      [item setTarget:self];
      [item setTag:CPSearchFieldIOSfilter];
      [cellMenu insertItem:item atIndex:1];

      item = [[NSMenuItem alloc] initWithTitle:@"OSX" action:@selector(setSearchCategoryFrom:) keyEquivalent:@""];
      [item setTarget:self];
      [item setTag:CPSearchFieldOSXfilter];
      [cellMenu insertItem:item atIndex:2];

      item = [[NSMenuItem alloc] initWithTitle:@"iOS and OSX" action:@selector(setSearchCategoryFrom:) keyEquivalent:@""];
      [item setTarget:self];
      [item setTag:CPSearchFieldBothfilter];
      [cellMenu insertItem:item atIndex:3];


      item = [NSMenuItem separatorItem];
      [item setTag:NSSearchFieldRecentsTitleMenuItemTag];
      [cellMenu insertItem:item atIndex:4];

      item = [[NSMenuItem alloc] initWithTitle:NSLocalizedString(@"Recent Searches", @"Recent Searches menu title") action:NULL keyEquivalent:@""];
      [item setTag:NSSearchFieldRecentsTitleMenuItemTag];
      [cellMenu insertItem:item atIndex:5];

      item = [[NSMenuItem alloc] initWithTitle:@"Recents"
                                        action:NULL keyEquivalent:@""];
      [item setTag:NSSearchFieldRecentsMenuItemTag];
      [cellMenu insertItem:item atIndex:6];

      id searchCell = [searchView cell];
      [searchCell setSearchMenuTemplate:cellMenu];
    }
  }
	return self;
}

- (IBAction)setSearchCategoryFrom:(NSMenuItem *)menuItem {

  //  self.searchCategory = [menuItem tag];
  //  [[self.searchField cell] setPlaceholderString:[menuItem title]];
}

- (IBAction)updateFilter:sender {
  /*
   Create a predicate based on what is the current string in the
   search field and the value of searchCategory.
   */
  //  NSString *searchString = [self.searchField stringValue];
  //  NSPredicate *predicate;
  //
  //  if ((searchString != nil) && (![searchString isEqualToString:@""])) {
  //    if (searchCategory == 1) {
  //      predicate = [NSPredicate predicateWithFormat:
  //                   @"firstName contains[cd] %@", searchString];
  //    }
  //    if (searchCategory == 2) {
  //      predicate = [NSPredicate predicateWithFormat:
  //                   @"lastName contains[cd] %@", searchString];
  //    }
  //  }

  /*
   Method continues to perform the search and display the results.
   */
}

- (void)controlTextDidChange:(NSNotification *)obj
{
  NSTextView* textView = [[obj userInfo] objectForKey:@"NSFieldEditor"];

  if ([textView.string isEqualToString:@""]) {
    _specsArrayController.filterPredicate = nil;
  } else {
    _specsArrayController.filterPredicate = [NSPredicate predicateWithBlock:^BOOL(CPSpec *spec, NSDictionary *bindings) {
      BOOL nameMatch = [spec.name rangeOfString:textView.string options:NSCaseInsensitiveSearch | NSDiacriticInsensitiveSearch].length > 0;
      BOOL summaryMatch = [spec.summary rangeOfString:textView.string options:NSCaseInsensitiveSearch | NSDiacriticInsensitiveSearch].length > 0;
      return nameMatch || summaryMatch;
    }];
  }
  [_tableView reloadData];
}


- (void)setSpecs:(NSArray *)specs {
	_specs = specs;
  _specsArrayController.content = _specs;
  [self calculateHeights];
	[_tableView reloadData];
}

- (void)calculateHeights {
  CPSpecTableViewCell *cell = reusableTableCellOfClass(_tableView, CPSpecTableViewCell);

  NSMutableDictionary *dictionary = [NSMutableDictionary new];
  [_specs enumerateObjectsUsingBlock:^(CPSpec *spec, NSUInteger idx, BOOL *stop) {
    TUIAttributedString *title = [TUIAttributedString stringWithString:spec.name];
    title.color = [TUIColor colorWithWhite:0.2 alpha:1.0];
    title.font = titleFont;
    cell.title = title;

    TUIAttributedString *desc = [TUIAttributedString stringWithString:spec.summary];
    desc.color = [TUIColor colorWithWhite:0.5 alpha:1.0];
    desc.font = descFont;
    cell.description = desc;

    [dictionary setObject:[NSNumber numberWithFloat:[cell sizeConstrainedToWidth:self.frame.size.width]] forKey:spec.name];
  }];
  cellHeights = dictionary;
}

- (NSInteger)tableView:(TUITableView *)table numberOfRowsInSection:(NSInteger)section
{
	return [self.specsArrayController.arrangedObjects count];
}

- (CGFloat)tableView:(TUITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  CPSpec *spec = self.specsArrayController.arrangedObjects[indexPath.row];
  return [[cellHeights objectForKey:spec.name] floatValue];
}

- (CPSpecTableViewCell *)tableView:(TUITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	CPSpecTableViewCell *cell = reusableTableCellOfClass(tableView, CPSpecTableViewCell);

	CPSpec *spec = self.specsArrayController.arrangedObjects[indexPath.row];
	TUIAttributedString *title = [TUIAttributedString stringWithString:spec.name];
	title.color = [TUIColor colorWithWhite:0.2 alpha:1.0];
	title.font = titleFont;
	cell.title = title;

	TUIAttributedString *desc = [TUIAttributedString stringWithString:spec.summary];
	desc.color = [TUIColor colorWithWhite:0.5 alpha:1.0];
	desc.font = descFont;
	cell.description = desc;

	return cell;
}

- (void)tableView:(TUITableView *)tableView didClickRowAtIndexPath:(NSIndexPath *)indexPath withEvent:(NSEvent *)event
{
	CPSpec *spec = self.specsArrayController.arrangedObjects[indexPath.row];
  if([event clickCount] == 2) {
    NSURL* url = [NSURL URLWithString:spec.homepage];
    [[NSWorkspace sharedWorkspace] openURL:url ];
	} else if ([event clickCount] == 1) {
		// Show the details
    // Move this to details view or use Fragraria
    [[NSWorkspace sharedWorkspace] openFile:spec.filePath ];
	}
}
- (BOOL)tableView:(TUITableView *)tableView shouldSelectRowAtIndexPath:(NSIndexPath *)indexPath forEvent:(NSEvent *)event{
	switch (event.type) {
		case NSRightMouseDown:
			return NO;
	}
  
	return YES;
}

@end
