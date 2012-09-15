//
//  CPBackgroundView.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 15/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPBackgroundView.h"

@implementation CPBackgroundView

- (void)setBackgroundColor:(NSColor *)backgroundColor {
  _backgroundColor = backgroundColor;
  [self setNeedsDisplay:TRUE];
}

- (void)drawRect:(NSRect)dirtyRect {
  [self.backgroundColor setFill];
  [NSBezierPath fillRect:dirtyRect];
}

@end
