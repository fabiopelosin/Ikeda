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

	// text
	CGRect textRect = CGRectOffset(b, 15, -15);
	textRenderer.frame = textRect; // set the frame so it knows where to draw itself
	[textRenderer draw];

    // text
	CGRect descRect = CGRectOffset(b, 15, -40);
	descriptionTextRenderer.frame = descRect; // set the frame so it knows where to draw itself
	[descriptionTextRenderer draw];
}

@end
