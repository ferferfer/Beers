//
//  PersonListTest.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 05/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PersonList.h"
#import "Person.h"

@interface PersonListTest : XCTestCase

@end

@implementation PersonListTest
-(void)testCanCreateAPersonList{
	PersonList *allPersons = [[PersonList alloc] init];
	
	XCTAssertNotNil(allPersons, @"OMFG! 💀");
	XCTAssertEqual(0, [allPersons count], @"OMFG is not 0! 💀");
	
}

-(void)testCanAddAPersonToTheList{
	PersonList *allPersons = [[PersonList alloc] init];
	
	Person *mahou = [[Person alloc]init];
	[allPersons addPerson:mahou];
	
	XCTAssertEqual(1, [allPersons count], @"OMFG is not 0! 💀");
}


-(void)testCanRemoveAPersonFromTheList:(Person *)person{
	//createList
	PersonList *allPersons = [[PersonList alloc] init];
	//add person
	Person *mahou = [[Person alloc]init];
	[allPersons addPerson:mahou];
	//remove person
	[allPersons removePerson:mahou];
	//count
	XCTAssertEqual(0, [allPersons count], @"OMFG is not 0! 💀");
	
}
-(void)testCanCountPersonsInTheList{
	//createList
	PersonList *allPersons = [[PersonList alloc] init];
	//add person
	Person *mahou = [[Person alloc]init];
	[allPersons addPerson:mahou];
	Person *mahou2 = [[Person alloc]init];
	[allPersons addPerson:mahou2];
	Person *mahou3 = [[Person alloc]init];
	[allPersons addPerson:mahou3];
	Person *mahou4 = [[Person alloc]init];
	[allPersons addPerson:mahou4];
	XCTAssertEqual(4, [allPersons count], @"OMFG is not 4! 💀");
}
-(void)testCanShowAllPersons{
	//createList
	PersonList *allPersons = [[PersonList alloc] init];
	
	for(int i=0; i<100;i++){
		//add person
		Person *mahou = [[Person alloc]init];
		mahou.name=[NSString stringWithFormat:@"Person %i",i];
		[allPersons addPerson:mahou];
	}
	XCTAssertTrue([[allPersons allPersons] count]==100 ,@"OMFG is not 100! 💀");
	
	//first Form
	for(int i=0; i<100;i++){
		Person *allPersonsToTest = [[allPersons allPersons] objectAtIndex:i];
		NSString *n=[NSString stringWithFormat:@"Person %i",i];
		XCTAssertEqualObjects(allPersonsToTest.name, n,@"");
	}
	//second Form
	int p=0;
	for(Person *personsToTest in [allPersons allPersons]){
		NSString *n=[NSString stringWithFormat:@"Person %i",p];
		p++;
		XCTAssertEqualObjects(personsToTest.name, n,@"");
	}
	
	//best Form IMPORTANT!!!!
	[[allPersons allPersons] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
		Person *personToTest=(Person *)obj;
		NSLog(@"%@ %d",personToTest.name,idx);
		
		*stop=idx>50 ? YES:NO;
		
	}];
}

-(void)testCanCreateAPersonListKVC{
	PersonList *allPersons = [[PersonList alloc] init];
	
	XCTAssertNotNil(allPersons, @"OMFG! 💀");
	XCTAssertEqual(0, [[allPersons valueForKey:@"count"]integerValue], @"OMFG is not 0! 💀");
	
}

-(void)testCanAddAPersonToTheListKVC{
	PersonList *allPersons = [[PersonList alloc] init];
	
	Person *mahou = [[Person alloc]init];
	[allPersons addPerson:mahou];
	
	XCTAssertEqual(1, [[allPersons valueForKey:@"count"]integerValue], @"OMFG is not 0! 💀");
}


-(void)testCanRemoveAPersonFromTheListKVC:(Person *)person{
	//createList
	PersonList *allPersons = [[PersonList alloc] init];
	//add person
	Person *mahou = [[Person alloc]init];
	[allPersons addPerson:mahou];
	//remove person
	[allPersons removePerson:mahou];
	//count
	XCTAssertEqual(0, [[allPersons valueForKey:@"count"]integerValue], @"OMFG is not 0! 💀");
	
}
-(void)testCanCountPersonsInTheListKVC{
	//createList
	PersonList *allPersons = [[PersonList alloc] init];
	//add person
	Person *mahou = [[Person alloc]init];
	[allPersons addPerson:mahou];
	Person *mahou2 = [[Person alloc]init];
	[allPersons addPerson:mahou2];
	Person *mahou3 = [[Person alloc]init];
	[allPersons addPerson:mahou3];
	Person *mahou4 = [[Person alloc]init];
	[allPersons addPerson:mahou4];
	XCTAssertEqual(4, [[allPersons valueForKey:@"count"]integerValue], @"OMFG is not 4! 💀");
}

-(void)testCanShowAllPersonsKVC{
	//createList
	PersonList *allPersons = [[PersonList alloc] init];
	
	for(int i=0; i<100;i++){
		//add person
		Person *mahou = [[Person alloc]init];
		[mahou setValue:[NSString stringWithFormat:@"Person %i",i] forKey:@"name"];
		[allPersons addPerson:mahou];
	}
	
	XCTAssertTrue([[allPersons allPersons] count]==100 ,@"OMFG is not 100! 💀");
	
	//first Form
	for(int i=0; i<100;i++){
		Person *allPersonsToTest = [[allPersons allPersons] objectAtIndex:i];
		NSString *n=[NSString stringWithFormat:@"Person %i",i];
		XCTAssertEqualObjects([allPersonsToTest valueForKey:@"name"],n,@"");
	}
	//second Form
	int p=0;
	for(Person *personsToTest in [allPersons allPersons]){
		NSString *n=[NSString stringWithFormat:@"Person %i",p];
		p++;
		XCTAssertEqualObjects([personsToTest valueForKey:@"name"], n,@"");
	}
	
	//best Form IMPORTANT!!!!
	[[allPersons allPersons] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
		Person *personToTest=(Person *)obj;
		NSLog(@"%@ %d",[personToTest valueForKey:@"name"],idx);
		[self printAllPropertiesNamed:@[@"name",@"country",@"grade"] forObject:personToTest];
		*stop=idx>50 ? YES:NO;
		
	}];
}

-(void)printAllPropertiesNamed:(NSArray* )properties forObject:(id)o{
	for (NSString *prop in properties) {
    NSLog(@"property %@ is %@", [o valueForKey:@"name"],prop);
	}
}
@end
