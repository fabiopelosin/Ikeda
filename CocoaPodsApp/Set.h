//
//  Set.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 10/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Set : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *versions;
@end

@interface Set (CoreDataGeneratedAccessors)

- (void)addVersionsObject:(NSManagedObject *)value;
- (void)removeVersionsObject:(NSManagedObject *)value;
- (void)addVersions:(NSSet *)values;
- (void)removeVersions:(NSSet *)values;

@end
