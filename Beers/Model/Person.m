//
//  Person.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 03/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (id)personWithName:(NSString *)name{
	return [[Person alloc] initWithName:name];
}

+ (id)personWithName:(NSString *)name
					andAddress:(NSString *)address{
	return [[Person alloc] initWithName:name andAddress:address];
}

- (id)init{
	self=[self	initWithName:@"Fer"
					andAddress:@""
							andAge:18];
	return self;
}

- (id)initWithName:(NSString *)name{
	self=[self initWithName:name
						andAddress:@""
								andAge:18];
	return self;
}

- (id)initWithName:(NSString *)name
				andAddress:(NSString *)address{
	self= [self	initWithName:name
								andAddress:address
										andAge:18];
	return self;
}
- (id)initWithName:(NSString *)name
				andAddress:(NSString *)address
						andAge:(NSUInteger)age{
	
	self =[super init];
	if(self){ //initialize
		_name=name;
		//self.name=name; CODE SMELL
		_address=address;
		_age=age;
	}
	return self;
}

@end
