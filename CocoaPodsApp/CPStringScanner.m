//
//  CPStringScanner.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 17/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPStringScanner.h"

@implementation CPStringScanner

- (NSMutableString*)convertBashColoredString:(NSString*)string {
  NSString *clear = @"\e[0m";
  NSString *green = @"\e[32m";
  NSScanner *scanner = [NSScanner scannerWithString:@""];
  NSMutableString *result = [NSMutableString new];

  

  return result;
}

@end
