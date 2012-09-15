//
//  CPSpecsViewController.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 14/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPSpecsViewController.h"
#import "CPSpecDetailViewController.h"

@interface NSString (CPIncludeCategory)

- (BOOL)include:(NSString*)anotherString;

@end

@implementation NSString (CPIncludeCategory)

- (BOOL)include:(NSString*)anotherString {
  return [self rangeOfString:anotherString options:NSCaseInsensitiveSearch | NSDiacriticInsensitiveSearch].length > 0;
}

@end


@interface CPSpecsViewController () <NSTableViewDelegate>
@property (nonatomic, readwrite) NSPredicate *predicate;
@property (nonatomic, readwrite) NSArray *sortDescriptors;
@property (nonatomic, readwrite) NSArray *specs;
@end

@implementation CPSpecsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(specsDidUpdateNotification:) name:kCPGemBridgeManagerDidCompleteUpdateNotification
     object:nil];
  }
  return self;
}

- (void)specsDidUpdateNotification:(NSNotification*)notification {
  self.specs = [[CPGemBridgeManager sharedInstance] specsWithFilter:self.specsFilter];
  self.empty = (self.specs.count != 0);
}

- (void)dealloc {
  [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)navigationViewController:(CPNavigationViewController*)vc didUpdateSearchTerm:(NSString*)searchTerm {
  if ([searchTerm isEqualToString:@""]) {
    self.predicate = nil;
    self.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES]];
  } else {
    self.predicate = [NSPredicate predicateWithBlock:^BOOL(CPSpecification *spec, NSDictionary *bindings) {
      BOOL nameMatch = [spec.name include:searchTerm];
      BOOL summaryMatch = [spec.summary include:searchTerm];
      BOOL descriptionMatch = [spec.specDescription include:searchTerm];
      return nameMatch || summaryMatch || descriptionMatch;
    }];

    // Sort by importance of the match
    NSComparator comparator = ^(NSString *value1, NSString *value2) {
      if ([value1 include:searchTerm] && ![value2 include:searchTerm]) {
        return NSOrderedAscending;
      } else if ([value2 include:searchTerm] && ![value1 include:searchTerm]) {
        return NSOrderedDescending;
      } else {
        return NSOrderedSame;
      }
    };

    self.sortDescriptors = @[
    [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES comparator:comparator],
    [NSSortDescriptor sortDescriptorWithKey:@"summary" ascending:YES comparator:comparator],
    [NSSortDescriptor sortDescriptorWithKey:@"specDescription" ascending:YES comparator:comparator],
    [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES]
   ];
  }
}

- (void)setSpecsFilter:(NSString *)specsFilter {
  _specsFilter = specsFilter;
  self.specs = [[CPGemBridgeManager sharedInstance] specsWithFilter:specsFilter];
  self.empty = (self.specs.count != 0);
}

- (IBAction)tableViewAction:(NSTableView *)sender {
  CPSpecification *spec = self.specsArrayController.arrangedObjects[sender.selectedRow];
  CPSpecDetailViewController *vc = [[CPSpecDetailViewController alloc] initWithNibName:@"CPSpecDetailViewController" bundle:nil];
  vc.spec = spec;
  [self.navigationController pushViewController:vc];
}

- (void)viewWillAppear {
  self.empty = (self.specs.count != 0);
}

- (void)viewDidAppear {
  [[_tableView animator] selectRowIndexes:[NSIndexSet indexSet] byExtendingSelection:NO];
}


@end
