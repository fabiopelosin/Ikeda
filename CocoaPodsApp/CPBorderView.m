//
//  CPBorderView.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 15/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPBorderView.h"

@implementation CPBorderView

- (id)initWithFrame:(NSRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    [self commonInitialization];
  }
  return self;
}

- (id)initWithCoder:(NSCoder *)coder
{
  self = [super initWithCoder:coder];
  if (self) {
    [self commonInitialization];
  }
  return self;
}

- (void)commonInitialization {
  [self setWantsLayer:YES];
  [self setFocusRingType:NSFocusRingTypeNone];

  _borderColor = [NSColor colorWithCalibratedRed:0.676 green:0.669 blue:0.706 alpha:1.000];
  _borderHighlightColor = [NSColor colorWithCalibratedWhite:0.698 alpha:1.000];
  _shadowColor = [NSColor colorWithCalibratedWhite:0.f alpha:0.05f];
  _direction   = kCPBorderViewTopDirection;
}


#pragma mark - Properties

- (void)setBorderColor:(NSColor *)borderColor {
  _borderColor = borderColor;
  [self setNeedsDisplay:TRUE];
}

- (void)setShadowColor:(NSColor *)shadowColor {
  _shadowColor = shadowColor;
  [self setNeedsDisplay:TRUE];
}

- (void)setBorderHighlightColor:(NSColor *)borderHighlightColor {
  _borderHighlightColor = borderHighlightColor;
  [self setNeedsDisplay:TRUE];
}

- (void)setDirection:(CPBorderViewDirection)direction {
  _direction = direction;
  [self setNeedsDisplay:TRUE];
}


#pragma - Drawing

- (void)drawRect:(NSRect)dirtyRect
{
  CGRect borderLineRect;
  CGRect highlightLineRect;
  CGFloat shadowAngle;

  CGFloat width =  self.bounds.size.width;
  CGFloat height =  self.bounds.size.height;

  switch (_direction) {
    case kCPBorderViewTopDirection:
      borderLineRect = CGRectMake(0.f, height - 1.f, width, 1.f);
      highlightLineRect = CGRectOffset(borderLineRect, 0.f, -1.f);
      shadowAngle = 90.0f;
      break;
    case kCPBorderViewBottomDirection:
      borderLineRect = CGRectMake(0.f, 0.f, width, 1.f);
      highlightLineRect = CGRectOffset(borderLineRect, 0.f, 1.f);
      shadowAngle = 270.0f;
      break;
    case kCPBorderViewLeftDirection:
      borderLineRect = CGRectMake(0.f, 0.f, 1.f, height);
      highlightLineRect = CGRectOffset(borderLineRect, 1.f, 0.f);
      shadowAngle = 180.0f;
      break;
    case kCPBorderViewRightDirection:
      borderLineRect = CGRectMake(width - 1.f, 0.f, 1.f, height);
      highlightLineRect = CGRectOffset(borderLineRect, -1.f, 0.f);
      shadowAngle = .0f;
      break;
  }

  if (_shadowColor) {
    NSArray *colors = @[[_shadowColor colorWithAlphaComponent:0.f], _shadowColor];
    NSGradient *gradient = [[NSGradient alloc] initWithColors:colors];
    [gradient drawInRect:self.bounds angle:shadowAngle];
  }

  if (_borderHighlightColor) {
    [_borderHighlightColor setFill];
    [NSBezierPath fillRect:highlightLineRect];
  }

  if (_borderColor) {
    [_borderColor setFill];
    [NSBezierPath fillRect:borderLineRect];
  }
}

@end
