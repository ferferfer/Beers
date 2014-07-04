//
//  PersonList.h
//  Beers
//
//  Created by Fernando Garcia Corrochano on 05/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonList : NSObject

@property (nonatomic)NSUInteger count;

-(void)addPerson:(Person *)person;
-(void)removePerson:(Person *)person;
-(NSUInteger)count;
-(NSArray *)allPersons;
-(BOOL)removePersonPro:(Person *)person;

@end
