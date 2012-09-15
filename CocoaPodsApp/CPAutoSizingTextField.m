//
//  CPAutoSizingTextField.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 15/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPAutoSizingTextField.h"

@implementation CPAutoSizingTextField

- (void)setStringValue:(NSString *)aString {
  [super setStringValue:aString];
  [self sizeToFit];
}


@end
