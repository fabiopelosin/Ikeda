//
//  CPSubspec.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 14/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class CPSpecification;

@interface CPSubspec : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) CPSpecification *specification;

@end
