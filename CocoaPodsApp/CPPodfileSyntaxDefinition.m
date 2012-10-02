//
//  CPPodfileSyntaxDefinition.m
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 01/10/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import "CPPodfileSyntaxDefinition.h"
#import "CPGemBridgeManager.h"
#import "BlocksKit.h"
#import "NSString+DSCategory.h"

@implementation CPPodfileSyntaxDefinition {
  NSArray* _specNames;
}

- (NSArray*)specNames {
  if (!_specNames) {
    NSArray *specs = [[CPGemBridgeManager sharedInstance] specs];
    _specNames = [specs map:^id(CPSpecification *spec) {
      return spec.name;
    }];
  }
  return _specNames;
}

- (NSArray *)completionsForPartialWord:(NSString*)partialWord partialLine:(NSString*)partiaLine indexOfSelectedItem:(NSInteger *)index {
  NSString *match = [partiaLine matchForPattern:@"pod *('|\")"];
  if ([match isValid]) {
    NSString* lowercasePartial = [partialWord lowercaseString];
    NSArray* completions = [[self specNames] select:^BOOL(NSString* name) {
      return [[name lowercaseString] hasPrefix:lowercasePartial];
    }];
    return completions;
  } else {
    return [super completionsForPartialWord:partialWord
                                partialLine:partiaLine
                        indexOfSelectedItem:index];
  }
}

- (BOOL)shouldAutoPresentSuggentsionsForPartialLine:(NSString*)partialLine {
  return [[partialLine matchForPattern:@"pod *('|\")"] isValid];
}

@end
