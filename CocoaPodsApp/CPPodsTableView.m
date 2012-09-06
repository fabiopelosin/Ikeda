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

@implementation CPPodsTableView {
    TUITableView *_tableView;
	TUIFont *titleFont;
	TUIFont *descFont;
}

- (void)setSpecs:(NSArray *)specs {
    _specs = specs;
    [_tableView reloadData];
}


- (id)initWithFrame:(CGRect)frame
{
	if((self = [super initWithFrame:frame])) {
		self.backgroundColor = [TUIColor colorWithWhite:0.9 alpha:1.0];

		titleFont = [TUIFont fontWithName:@"HelveticaNeue" size:15];
		descFont = [TUIFont fontWithName:@"HelveticaNeue" size:13];

		CGRect b = self.bounds;
//        b.origin.y -= 30;
        b.size.height -= 60;

		_tableView = [[TUITableView alloc] initWithFrame:b];
		_tableView.autoresizingMask = TUIViewAutoresizingFlexibleSize;
		_tableView.dataSource = self;
		_tableView.delegate = self;
		_tableView.maintainContentOffsetAfterReload = TRUE;
		[self addSubview:_tableView];

        b = CGRectMake(0, self.bounds.size.height - 60, self.bounds.size.width, 60);
        TUIView* searchView= [[TUIView alloc] initWithFrame:b];
        searchView.backgroundColor = [TUIColor colorWithWhite:0.2 alpha:1.0];
        searchView.autoresizingMask = TUIViewAutoresizingFlexibleWidth;
        [self addSubview:searchView];
        // Add searchbar

    }
	return self;
}

- (NSInteger)tableView:(TUITableView *)table numberOfRowsInSection:(NSInteger)section
{
	return self.specs.count;
}

- (CGFloat)tableView:(TUITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return 80.0;
}

- (TUITableViewCell *)tableView:(TUITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	CPSpecTableViewCell *cell = reusableTableCellOfClass(tableView, CPSpecTableViewCell);

    CPSpec *spec = self.specs[indexPath.row];
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
	if([event clickCount] == 1) {
		// Open spec homepage
	}

	if(event.type == NSRightMouseUp){
		// show context menu
	}
}
- (BOOL)tableView:(TUITableView *)tableView shouldSelectRowAtIndexPath:(NSIndexPath *)indexPath forEvent:(NSEvent *)event{
	switch (event.type) {
		case NSRightMouseDown:
			return NO;
	}

	return YES;
}

/** old implementation
 class AppDelegate
 attr_accessor :window
 attr_accessor :searchField
 attr_accessor :popUpButton
 attr_accessor :table
 attr_accessor :podsArrayController
 attr_accessor :statusLabel

 def udpateStatusLabel
 statusLabel.stringValue = "#{@podsArrayController.arrangedObjects.count} Pods"
 end

 def applicationDidFinishLaunching(a_notification)
 searchField.delegate = self
 loadSpecifications

 col = table.tableColumnWithIdentifier("name")
 col.bind("value", toObject:@podsArrayController, withKeyPath:"arrangedObjects.name", options:nil)
 col = table.tableColumnWithIdentifier("version")
 col.bind("value", toObject:@podsArrayController, withKeyPath:"arrangedObjects.version.to_s", options:nil)
 col = table.tableColumnWithIdentifier("description")
 col.bind("value", toObject:@podsArrayController, withKeyPath:"arrangedObjects.summary", options:nil)

 doubleClickOptionsDict = {
 "NSSelectorName" => "doubleClick:",
 "NSConditionallySetsHidden" => NSNumber.numberWithBool(true),
 "NSRaisesForNotApplicableKeys" => NSNumber.numberWithBool(true)
 }
 table.bind("doubleClickArgument", toObject:@podsArrayController, withKeyPath:"selectedObjects", options:doubleClickOptionsDict)
 table.bind("doubleClickTarget", toObject:self, withKeyPath:"self", options:doubleClickOptionsDict)
 end

 def doubleClick(selectedObjects)
 selectedObjects
 url = NSURL.URLWithString(selectedObjects.first.homepage)
 NSWorkspace.sharedWorkspace.openURL(url)
 end

 def applicationShouldTerminateAfterLastWindowClosed(sender)
 true
 end

 # Do in background
 def loadSpecifications
 @podsArrayController = NSArrayController.new
 queue = Dispatch::Queue.concurrent(priority=:default)
 statusLabel.stringValue = "Loading..."
 queue.async do
 specs = []
 count = 0
 Pod::Source.all_sets.each do |set|
 specs << set.specification
 count += 1
 Dispatch::Queue.main.sync do
 @podsArrayController.content = specs
 udpateStatusLabel
 end if (count % 10) == 0
 end
 end
 end


 def match_platform_filter?(spec)
 case popUpButton.indexOfSelectedItem
 when 0
 true
 when 1
 spec.available_platforms.map(&:name).include?(:ios)
 when 2
 spec.available_platforms.map(&:name).include?(:osx)
 when 3
 platforms = spec.available_platforms.map(&:name)
 platforms.include?(:osx) && platforms.include?(:ios)
 end
 end

 def perfromSearch(_)
 search_term = searchField.stringValue.downcase
 @podsArrayController.filterPredicate = NSPredicate.predicateWithBlock Proc.new { |spec, _bindings|
 (search_term.empty? ||
 spec.name.downcase.include?(search_term) ||
 spec.summary.downcase.include?(search_term) ||
 spec.description.downcase.include?(search_term)) ||
 spec.author.downcase.include?(search_term))
 && match_platform_filter?(spec)
 }
 udpateStatusLabel
 end

 class VersionsValueTransformer < NSValueTransformer
 def self.transformedValueClass
 String
 end

 def allowsReverseTransformation
 false
 end

 def transformedValue(versions)
 versions.first.to_s
 end
 end
 end
**/

@end
