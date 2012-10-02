//
//  CPSyntaxTheme.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 01/10/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPSyntaxTheme.h"

@implementation CPSyntaxTheme

- (id)init {
  self = [super init];
  if (self) {
    self.plainTextColor              =  [NSColor colorWithCalibratedWhite:0.261 alpha:1.000];
    self.variableColor       =  [NSColor blackColor];
    self.commentColor                =  [NSColor colorWithCalibratedWhite:0.647 alpha:1.000];
    self.stringColor                 =  [NSColor colorWithCalibratedRed:0.264 green:0.399 blue:0.550 alpha:1.000];
    self.keywordColor                =  [NSColor colorWithCalibratedRed:0.264 green:0.399 blue:0.550 alpha:1.000];
    self.constantColor               =  self.variableColor;
    self.DSLKeywordColor             = [NSColor blackColor];

    self.backgroundColor             =  [NSColor whiteColor];
    self.cursorColor                 =  self.plainTextColor;

  }
  return self;
}
@end
