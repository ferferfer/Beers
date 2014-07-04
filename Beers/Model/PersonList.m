//
//  PersonList.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 05/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "PersonList.h"
#import "Person.h"

@interface PersonList ()

@property (nonatomic,strong) NSMutableArray *thePersonList;

@end

@implementation PersonList

- (instancetype)init
{
	self = [super init];
	if (self) {
		_thePersonList = [[NSMutableArray alloc]init];
	}
	return self;
}

-(void)addPerson:(Person *)person{
	[self.thePersonList addObject:person];
}

-(void)removePerson:(Person *)person{
	[self.thePersonList removeObject:person];
}

-(NSUInteger)count{
	return [self.thePersonList count];
}

-(NSArray *)allPersons{
	return self.thePersonList;
}

-(BOOL)removePersonPro:(Person *)person{
	NSUInteger countBefore= [self.thePersonList count];
	[self.thePersonList removeObject:person];
	NSUInteger countAfter=[self.thePersonList count];
	if(countAfter==countBefore){
		return NO;
	}
	return YES;
}

@end
