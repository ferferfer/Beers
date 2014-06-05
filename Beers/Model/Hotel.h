//
//  Hotel.h
//  Beers
//
//  Created by Fernando Garcia Corrochano on 04/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Hotel : NSObject

@property (nonatomic,strong) NSMutableDictionary *rooms;

-(void)addPerson:(Person *)p toRoom:(NSString *)room;
-(NSArray *)allRooms;
-(Person *)whoSleepsAtRoom:(NSString *)room;
-(NSUInteger *)numberOfOccupiedRooms;
-(NSString *)inWhichRoomSleeps:(Person *)person;
-(void)removePerson:(Person *)person;
@end
