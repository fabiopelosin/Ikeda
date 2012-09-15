//
//  CPPodfile.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 12/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CPPodfile : NSObject

@property (nonatomic, copy) NSString* projectName;
@property (nonatomic, copy) NSString* projectPath;
@property (nonatomic, readonly) NSMutableArray* commandOutputs;
@property (nonatomic, readonly) NSMutableString* lastCommandOutput;

- (NSString*)path;
- (NSString*)stringReppresentation;
- (void)openInExternalEditor;

- (void)startNewCommandOutput;


@end
