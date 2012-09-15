//
//  CPEmptyView.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 15/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPEmptyView.h"

@implementation CPEmptyView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
      _label = @"Loading...";
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{

  [[NSColor colorWithDeviceRed:0.789 green:0.820 blue:0.854 alpha:1.000] set];
  NSBezierPath *bezelPath = [NSBezierPath bezierPathWithRoundedRect:self.bounds
                                                            xRadius:10.f
                                                            yRadius:10.f];
  [[NSGraphicsContext currentContext] setCompositingOperation:NSCompositeSourceOver];
  [bezelPath fill];
  NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                              [NSFont systemFontOfSize:22.f], NSFontAttributeName,
                              [NSColor whiteColor], NSForegroundColorAttributeName,
                              nil];
  NSAttributedString *labelToDraw = [[NSAttributedString alloc] initWithString:self.label
                                                                    attributes:attributes];
  NSRect centeredRect;
  centeredRect.size = labelToDraw.size;
  centeredRect.origin.x = (self.bounds.size.width - centeredRect.size.width) / 2.0;
  centeredRect.origin.y = (self.bounds.size.height - centeredRect.size.height) / 2.0;
  [labelToDraw drawInRect:centeredRect];
}

@end
