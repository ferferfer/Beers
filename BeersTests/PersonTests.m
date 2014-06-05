//
//  PersonTests.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 04/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"

@interface PersonTests : XCTestCase

@end

@implementation PersonTests

#define TEST_NAME @"Fer"
#define TEST_ADDRESS @""
#define TEST_AGE 18

-(void)testCanCreateAPerson{
	Person *p=[[Person alloc]init];
	XCTAssertNotNil(p, @"OMFG! 💀");
	XCTAssertEqualObjects(TEST_NAME, p.name, @"expected %@, found %@ 🌈🐴",TEST_NAME, p.name);
	XCTAssertEqual(TEST_AGE, p.age, @"expected %i, found %i 🌈🐴",TEST_AGE, p.age);
	XCTAssertEqualObjects(TEST_ADDRESS, p.address, @"expected %@, found %@ 🌈🐴",TEST_ADDRESS, p.address);
}

-(void)testCanCreateAPersonWithName{
	Person *p=[[Person alloc]initWithName:TEST_NAME];
	XCTAssertNotNil(p, @"OMFG! 💀");
	XCTAssertEqualObjects(TEST_NAME, p.name, @"expected %@, found %@ 🌈🐴",TEST_NAME, p.name);
	XCTAssertEqual(TEST_AGE, p.age, @"expected %i, found %i 🌈🐴",TEST_AGE, p.age);
	XCTAssertEqualObjects(TEST_ADDRESS,	p.address, @"expected %@, found %@ 🌈🐴",TEST_ADDRESS, p.address);
}
-(void)testCanCreateAPersonWithNameAndAddress{
	Person *p=[[Person alloc]initWithName:TEST_NAME andAddress:TEST_ADDRESS];
	XCTAssertNotNil(p, @"OMFG! 💀");
	XCTAssertEqualObjects(TEST_NAME, p.name, @"expected %@, found %@ 🌈🐴",TEST_NAME, p.name);
	XCTAssertEqual(TEST_AGE, p.age, @"expected %i, found %i 🌈🐴",TEST_AGE, p.age);
	XCTAssertEqualObjects(TEST_ADDRESS, p.address, @"expected %@, found %@ 🌈🐴",TEST_ADDRESS, p.address);
}
-(void)testCanCreateAPersonWithNameAndAddressAndAge{
	Person *p=[[Person alloc]initWithName:TEST_NAME andAddress:@"" andAge:18];
	XCTAssertNotNil(p, @"OMFG! 💀");
	XCTAssertEqualObjects(@"Fer", p.name, @"expected %@, found %@ 🌈🐴",@"Fer", p.name);
	XCTAssertEqual(18, p.age, @"expected %@, found %i 🌈🐴",@"18", p.age);
	XCTAssertEqualObjects(@"", p.address, @"expected %@, found %@ 🌈🐴",@"", p.address);
}

@end
