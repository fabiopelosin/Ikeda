//
//  CPBorderView.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 15/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Cocoa/Cocoa.h>

typedef enum {
  kCPBorderViewTopDirection,
  kCPBorderViewBottomDirection,
  kCPBorderViewLeftDirection,
  kCPBorderViewRightDirection
} CPBorderViewDirection;

@interface CPBorderView : NSView

@property (nonatomic, retain) NSColor *borderColor;
@property (nonatomic, retain) NSColor *borderHighlightColor;
@property (nonatomic, retain) NSColor *shadowColor;
@property (nonatomic) CPBorderViewDirection direction;

//@property (nonatomic) CGFloat *shadowIntensity;


@end
