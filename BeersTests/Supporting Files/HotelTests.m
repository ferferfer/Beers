//
//  HotelTests.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 04/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"
#import "Hotel.h"

@interface HotelTests : XCTestCase

@end

@implementation HotelTests

-(void)testCanCreateAHotel{
	Hotel *palace=[[Hotel alloc]init];
	XCTAssertNotNil(palace, @"");
}

-(void)testCanAddAPersonToARoom{
	
	//NSMutableDictionary *theRooms = [[NSMutableDictionary alloc]init];
	Person *p=[p initWithName:@"Fer" andAddress:@"calle" andAge:30];
	//NSArray *roomsAtHotel =@[@"1",@"2",@"3",@"4",@"5"];
	Hotel *h = [[Hotel alloc]init];
	[h addPerson:p toRoom:@"1"];
	//[NSNull null] para meterlo en el diccionario
	XCTAssertEqual([[h rooms] count] , 1, @"");
}

@end
