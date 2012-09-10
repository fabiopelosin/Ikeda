//
//  CPSet.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 10/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class CPSpecification, CPVersion;

@interface CPSet : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic) BOOL needsSpecUpdate;
@property (nonatomic, retain) NSOrderedSet *versions;
@property (nonatomic, retain) CPSpecification *spec;
@end

@interface CPSet (CoreDataGeneratedAccessors)

- (void)insertObject:(CPVersion *)value inVersionsAtIndex:(NSUInteger)idx;
- (void)removeObjectFromVersionsAtIndex:(NSUInteger)idx;
- (void)insertVersions:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeVersionsAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInVersionsAtIndex:(NSUInteger)idx withObject:(CPVersion *)value;
- (void)replaceVersionsAtIndexes:(NSIndexSet *)indexes withVersions:(NSArray *)values;
- (void)addVersionsObject:(CPVersion *)value;
- (void)removeVersionsObject:(CPVersion *)value;
- (void)addVersions:(NSOrderedSet *)values;
- (void)removeVersions:(NSOrderedSet *)values;
@end
