//
//  CPSpecification.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 10/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class CPSet;

@interface CPSpecification : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * summary;
@property (nonatomic, retain) NSString * version;
@property (nonatomic, retain) NSString * homepage;
@property (nonatomic, retain) NSString * specDescription;
@property (nonatomic, retain) NSString * definedInFile;
@property (nonatomic, retain) NSNumber * supportsIOS;
@property (nonatomic, retain) NSNumber * supportsOSX;
@property (nonatomic, retain) CPSet *set;

@end
