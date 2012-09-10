//
//  CPVersion.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 10/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class CPSet;

@interface CPVersion : NSManagedObject

@property (nonatomic, retain) NSString * value;
@property (nonatomic, retain) CPSet *set;

@end
