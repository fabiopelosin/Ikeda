//
//  CPSpecification.h
//  CocoaPodsApp
//
//  Created by Fabio Pelosin on 14/09/12.
//  Copyright (c) 2012 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class CPSet, CPSubspec;

@interface CPSpecification : NSManagedObject

@property (nonatomic, retain) NSString * definedInFile;
@property (nonatomic, retain) NSString * homepage;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * specDescription;
@property (nonatomic, retain) NSString * summary;
@property (nonatomic, retain) NSNumber * supportsIOS;
@property (nonatomic, retain) NSNumber * supportsOSX;
@property (nonatomic, retain) NSString * version;
@property (nonatomic, retain) NSString * versions;
@property (nonatomic, retain) NSString * authors;
@property (nonatomic, retain) NSString * sourceURL;
@property (nonatomic, retain) NSString * license;
@property (nonatomic, retain) NSString * creationDate;
@property (nonatomic, retain) NSNumber * githubWatchers;
@property (nonatomic, retain) NSNumber * githubForks;
@property (nonatomic, retain) NSString * githubLastActivity;
@property (nonatomic, retain) CPSet *set;
@property (nonatomic, retain) NSSet *subspecs;
@end

@interface CPSpecification (CoreDataGeneratedAccessors)

- (void)addSubspecsObject:(CPSubspec *)value;
- (void)removeSubspecsObject:(CPSubspec *)value;
- (void)addSubspecs:(NSSet *)values;
- (void)removeSubspecs:(NSSet *)values;

@end
