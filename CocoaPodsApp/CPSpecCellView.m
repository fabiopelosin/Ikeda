//
//  CPSpecCellView.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 14/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPSpecCellView.h"

@implementation CPSpecCellView

- (void)drawRect:(NSRect)dirtyRect {
  CGRect b = self.bounds;

	if(self.backgroundStyle == NSBackgroundStyleDark) {
    [[NSColor colorWithCalibratedRed:0.869 green:0.887 blue:0.912 alpha:1.000] setFill];
    [NSBezierPath fillRect:b];
	} else {
    [[NSColor colorWithCalibratedWhite:.97f alpha:1.f] setFill];
    [NSBezierPath fillRect:b];
    [[NSColor colorWithCalibratedWhite:1.f alpha:0.9f] setFill];
    [NSBezierPath fillRect:CGRectMake(0, b.size.height-1, b.size.width, 1)];
    [[NSColor colorWithCalibratedWhite:0.f alpha:0.09f] setFill];
    [NSBezierPath fillRect:CGRectMake(0, 0, b.size.width, 1)];
  }
}


@end
