//
//  CPPodTableViewCell.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 01/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPSpecTableViewCell.h"

@implementation CPSpecTableViewCell {
    
    TUITextRenderer *textRenderer;
    TUITextRenderer *descriptionTextRenderer;
}

- (CGFloat)sizeConstrainedToWidth:(CGFloat)width {
  return 40 + [textRenderer sizeConstrainedToWidth:width -30].height + [descriptionTextRenderer sizeConstrainedToWidth:width -30].height;
}

- (id)initWithStyle:(TUITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
	if((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
		textRenderer = [[TUITextRenderer alloc] init];
		descriptionTextRenderer = [[TUITextRenderer alloc] init];
		self.textRenderers = @[textRenderer, descriptionTextRenderer];
	}
	return self;
}

- (NSAttributedString *)title
{
	return textRenderer.attributedString;
}

- (void)setTitle:(NSAttributedString *)attributedString
{
	textRenderer.attributedString = attributedString;
	[self setNeedsDisplay];
}



- (NSAttributedString *)description
{
    return descriptionTextRenderer.attributedString;
}

- (void)setDescription:(NSAttributedString *)description
{
    descriptionTextRenderer.attributedString = description;
	[self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
	CGRect b = self.bounds;
	CGContextRef ctx = TUIGraphicsGetCurrentContext();

	if(self.selected) {
		// selected background
		CGContextSetRGBFillColor(ctx, .87, .87, .87, 1);
		CGContextFillRect(ctx, b);
	} else {
		// light gray background
		CGContextSetRGBFillColor(ctx, .97, .97, .97, 1);
		CGContextFillRect(ctx, b);

		// emboss
		CGContextSetRGBFillColor(ctx, 1, 1, 1, 0.9); // light at the top
		CGContextFillRect(ctx, CGRectMake(0, b.size.height-1, b.size.width, 1));
		CGContextSetRGBFillColor(ctx, 0, 0, 0, 0.08); // dark at the bottom
		CGContextFillRect(ctx, CGRectMake(0, 0, b.size.width, 1));
	}

	CGRect textRect = CGRectMake(15, b.origin.x - 15, b.size.width -30, self.bounds.size.height);
	textRenderer.frame = textRect;
	[textRenderer draw];

	CGRect descRect = CGRectMake(15, b.origin.x - 40, b.size.width -30, self.bounds.size.height);
	descriptionTextRenderer.frame = descRect;
	[descriptionTextRenderer draw];
}

@end
