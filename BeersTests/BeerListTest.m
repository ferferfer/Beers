//
//  BeerListTest.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 04/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BeerList.h"
#import "Beer.h"

@interface BeerListTest : XCTestCase

@end

@implementation BeerListTest

-(void)testCanCreateABeerList{
	BeerList *allBeers = [[BeerList alloc] init];
	
	XCTAssertNotNil(allBeers, @"OMFG! 💀");
	XCTAssertEqual(0, [allBeers count], @"OMFG is not 0! 💀");
	
}

-(void)testCanAddABeerToTheList{
	BeerList *allBeers = [[BeerList alloc] init];
	
	Beer *mahou = [[Beer alloc]init];
	[allBeers addBeer:mahou];
	
	XCTAssertEqual(1, [allBeers count], @"OMFG is not 0! 💀");
}


-(void)testCanRemoveABeerFromTheList:(Beer *)beer{
	//createList
	BeerList *allBeers = [[BeerList alloc] init];
	//add beer
	Beer *mahou = [[Beer alloc]init];
	[allBeers addBeer:mahou];
	//remove beer
	[allBeers removeBeer:mahou];
	//count
	XCTAssertEqual(0, [allBeers count], @"OMFG is not 0! 💀");
	
}
-(void)testCanCountBeersInTheList{
	//createList
	BeerList *allBeers = [[BeerList alloc] init];
	//add beer
	Beer *mahou = [[Beer alloc]init];
	[allBeers addBeer:mahou];
	Beer *mahou2 = [[Beer alloc]init];
	[allBeers addBeer:mahou2];
	Beer *mahou3 = [[Beer alloc]init];
	[allBeers addBeer:mahou3];
	Beer *mahou4 = [[Beer alloc]init];
	[allBeers addBeer:mahou4];
	XCTAssertEqual(4, [allBeers count], @"OMFG is not 4! 💀");
}
-(void)testCanShowAllBeers{
	//createList
	BeerList *allBeers = [[BeerList alloc] init];

	for(int i=0; i<100;i++){
		//add beer
		Beer *mahou = [[Beer alloc]init];
		mahou.name=[NSString stringWithFormat:@"Beer %i",i];
		[allBeers addBeer:mahou];
	}
	XCTAssertTrue([[allBeers allBeers] count]==100 ,@"OMFG is not 100! 💀");

	//first Form
	for(int i=0; i<100;i++){
		Beer *allBeersToTest = [[allBeers allBeers] objectAtIndex:i];
		NSString *n=[NSString stringWithFormat:@"Beer %i",i];
		XCTAssertEqualObjects(allBeersToTest.name, n,@"");
	}
	//second Form
	int p=0;
	for(Beer *beersToTest in [allBeers allBeers]){
		NSString *n=[NSString stringWithFormat:@"Beer %i",p];
		p++;
		XCTAssertEqualObjects(beersToTest.name, n,@"");
	}

	//best Form IMPORTANT!!!!
	[[allBeers allBeers] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
		Beer *beerToTest=(Beer *)obj;
		NSLog(@"%@ %d",beerToTest.name,idx);
		
		*stop=idx>50 ? YES:NO;
		
	}];
}

-(void)testCanCreateABeerListKVC{
	BeerList *allBeers = [[BeerList alloc] init];
	
	XCTAssertNotNil(allBeers, @"OMFG! 💀");
	XCTAssertEqual(0, [[allBeers valueForKey:@"count"]integerValue], @"OMFG is not 0! 💀");
	
}

-(void)testCanAddABeerToTheListKVC{
	BeerList *allBeers = [[BeerList alloc] init];
	
	Beer *mahou = [[Beer alloc]init];
	[allBeers addBeer:mahou];
	
	XCTAssertEqual(1, [[allBeers valueForKey:@"count"]integerValue], @"OMFG is not 0! 💀");
}


-(void)testCanRemoveABeerFromTheListKVC:(Beer *)beer{
	//createList
	BeerList *allBeers = [[BeerList alloc] init];
	//add beer
	Beer *mahou = [[Beer alloc]init];
	[allBeers addBeer:mahou];
	//remove beer
	[allBeers removeBeer:mahou];
	//count
	XCTAssertEqual(0, [[allBeers valueForKey:@"count"]integerValue], @"OMFG is not 0! 💀");
	
}
-(void)testCanCountBeersInTheListKVC{
	//createList
	BeerList *allBeers = [[BeerList alloc] init];
	//add beer
	Beer *mahou = [[Beer alloc]init];
	[allBeers addBeer:mahou];
	Beer *mahou2 = [[Beer alloc]init];
	[allBeers addBeer:mahou2];
	Beer *mahou3 = [[Beer alloc]init];
	[allBeers addBeer:mahou3];
	Beer *mahou4 = [[Beer alloc]init];
	[allBeers addBeer:mahou4];
	XCTAssertEqual(4, [[allBeers valueForKey:@"count"]integerValue], @"OMFG is not 4! 💀");
}

-(void)testCanShowAllBeersKVC{
	//createList
	BeerList *allBeers = [[BeerList alloc] init];
	
	for(int i=0; i<100;i++){
		//add beer
		Beer *mahou = [[Beer alloc]init];
		[mahou setValue:[NSString stringWithFormat:@"Beer %i",i] forKey:@"name"];
		[allBeers addBeer:mahou];
	}
	
	XCTAssertTrue([[allBeers allBeers] count]==100 ,@"OMFG is not 100! 💀");
	
	//first Form
	for(int i=0; i<100;i++){
		Beer *allBeersToTest = [[allBeers allBeers] objectAtIndex:i];
		NSString *n=[NSString stringWithFormat:@"Beer %i",i];
		XCTAssertEqualObjects([allBeersToTest valueForKey:@"name"],n,@"");
	}
	//second Form
	int p=0;
	for(Beer *beersToTest in [allBeers allBeers]){
		NSString *n=[NSString stringWithFormat:@"Beer %i",p];
		p++;
		XCTAssertEqualObjects([beersToTest valueForKey:@"name"], n,@"");
	}
	
	//best Form IMPORTANT!!!!
	[[allBeers allBeers] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
		Beer *beerToTest=(Beer *)obj;
		NSLog(@"%@ %d",[beerToTest valueForKey:@"name"],idx);
		[self printAllPropertiesNamed:@[@"name",@"country",@"grade"] forObject:beerToTest];
		*stop=idx>50 ? YES:NO;
		
	}];
}

-(void)printAllPropertiesNamed:(NSArray* )properties forObject:(id)o{
	for (NSString *prop in properties) {
    NSLog(@"property %@ is %@", [o valueForKey:@"name"],prop);
	}
}

@end
