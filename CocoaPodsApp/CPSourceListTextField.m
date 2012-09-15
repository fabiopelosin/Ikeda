//
//  CPSourceListTextField.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 11/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPSourceListTextField.h"

@implementation CPSourceListTextField

- (void)drawInteriorWithFrame:(NSRect)cellFrame inView:(NSView *)controlView {
  if(![self isHighlighted]) {
    [super drawInteriorWithFrame:cellFrame inView:controlView];
    return;
  }

  NSRect inset = cellFrame;
  inset.origin.x += 2;
  NSMutableDictionary *attributes = [[[self attributedStringValue] attributesAtIndex:0 effectiveRange:NULL] mutableCopy];
  attributes[@"NSColor"] = [NSColor whiteColor];
  [[self stringValue] drawInRect:inset withAttributes:attributes];
}

@end
