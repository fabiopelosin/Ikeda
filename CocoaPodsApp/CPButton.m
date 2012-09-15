////
////  CPButton.m
////  CocoaPodsApp
////
////  Created by Fabio Pelosin on 12/09/12.
////  Copyright (c) 2012 CocoaPods. All rights reserved.
////
//
//#import "CPButton.h"
//
//const CGFloat kdefaultHeight = 35;
//#define DEFAULT_cellHeight 35
//#define DEFAULT_borderColor [NSColor colorWithCalibratedRed:200.0/255.0 green:200.0/255.0 blue:200.0/255.0 alpha:1.0]
//#define DEFAULT_radius 5
//
//#define shadowColor [NSColor colorWithCalibratedRed:251.0/255.0 green:251.0/255.0 blue:251.0/255.0 alpha:1.0]
//#define lightTextColor [NSColor colorWithCalibratedRed:186.0/255.0 green:168.0/255.0 blue:168.0/255.0 alpha:1.0]
//#define darkTextColor [NSColor colorWithCalibratedRed:88.0/255.0 green:88.0/255.0 blue:88.0/255.0 alpha:1.0]
//#define highlightColor [NSColor colorWithCalibratedRed:247.0/255.0 green:247.0/255.0 blue:247.0/255.0 alpha:1.0]
//
//#define gradientColor1 [NSColor colorWithCalibratedRed:230.0/255.0 green:230.0/255.0 blue:230.0/255.0 alpha:1.0]
//#define gradientColor2 [NSColor colorWithCalibratedRed:247.0/255.0 green:247.0/255.0 blue:247.0/255.0 alpha:1.0]
//
//#define radius 5
//
//
//@implementation CPButton
//
//- (id)initWithFrame:(NSRect)frame
//{
//  self = [super initWithFrame:frame];
//  if (self) {
//    self.titleLabel.renderer.verticalAlignment = TUITextVerticalAlignmentMiddle;
//    self.titleLabel.alignment = TUITextAlignmentCenter;
//    self.titleLabel.textColor = darkTextColor;
//  }
//  return self;
//}
//
//- (void)sizeToFit {
//  CGRect frame = self.frame;
//  frame.size.height = kdefaultHeight;
//  self.frame = frame;
//}
//
//-(void)drawRect:(NSRect)rect {
//  CGFloat maxX = NSMaxX(CGRectInset(self.bounds, 0.5, 0.5));
//  CGFloat minX = NSMinX(CGRectInset(self.bounds, 0.5, 0.5));
//  CGFloat minY = NSMinY(CGRectInset(self.bounds, 0.5, 0.5));
//  CGContextRef context = (CGContextRef)[[NSGraphicsContext currentContext] graphicsPort];
//
//  CGRect bounds = CGRectInset(self.bounds, 0.5, 0.5);
//  bounds.size.height -= 1;
//  bounds.origin.y += 1;
//  NSBezierPath* clipPath = [NSBezierPath bezierPathWithRoundedRect:NSRectFromCGRect(bounds) xRadius:DEFAULT_radius yRadius:DEFAULT_radius];
//
//  //draw background gradient
//  NSGradient* gradient = [[NSGradient alloc] initWithStartingColor:gradientColor1 endingColor:gradientColor2];
//  [gradient drawInBezierPath:clipPath angle:90.0f];
//
//  //draw border
//  [DEFAULT_borderColor setStroke];
//  [clipPath stroke];
//
//  //draw bottom shadow
//  CGMutablePathRef bottomShadow = CGPathCreateMutable();
//  CGPathMoveToPoint(bottomShadow, NULL, minX, minY+DEFAULT_radius);
//  CGPathAddQuadCurveToPoint(bottomShadow, NULL, minX, minY, minX+DEFAULT_radius , minY); //90degrees curve (left bottom)
//  CGPathAddLineToPoint(bottomShadow, NULL, maxX-DEFAULT_radius, minY);
//  CGPathAddQuadCurveToPoint(bottomShadow, NULL, maxX, minY, maxX, DEFAULT_radius); //90degrees curve (right bottom)
//  [shadowColor setStroke];
//  CGContextAddPath(context, bottomShadow);
//  CGContextDrawPath(context, kCGPathStroke);
//  CGPathRelease(bottomShadow);
//  
//  [super drawRect:rect];
//}
//
//@end
