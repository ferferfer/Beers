//
//  Hotel.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 04/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "Hotel.h"


@implementation Hotel

-(NSMutableDictionary *)rooms{
	if(_rooms==nil){
		_rooms=[[NSMutableDictionary alloc]init];
	}
	return _rooms;
}

-(void)addPerson:(Person *)p toRoom:(NSString *)room{
	[self.rooms setObject:p forKey:room];
}

-(NSArray *)allRooms{
	return [self.rooms allKeys];
	/*other way
	 NSMutableArray *theRooms=[[NSMutableArray alloc]init];
	for (NSString* key in self.rooms) {
		[theRooms addObject:[self.rooms objectForKey:key]];
	}
	return theRooms;
	 */
}

-(Person *)whoSleepsAtRoom:(NSString *)room{
	return [self.rooms valueForKey:room];
}

-(NSUInteger *)numberOfOccupiedRooms{
	return (NSUInteger *)[self.rooms count];
}

-(NSString *)inWhichRoomSleeps:(Person *)person{
	for (NSString* key in self.rooms) {
		if ([person isEqual:[self.rooms objectForKey:key]]) {
			return key;
		}
	}
	return nil;
}

-(void)removePerson:(Person *)person{
	for (NSString* key in self.rooms){
		if ([person isEqual:[self.rooms objectForKey:key]]) {
			[self.rooms removeObjectForKey:key];
		}
	}
}
@end
