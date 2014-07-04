//
//  BeerList.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 04/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "BeerList.h"

@interface BeerList ()

@property (nonatomic,strong) NSMutableArray *theList;

@end

@implementation BeerList

//DESIGNATED INITIALICER
- (instancetype)init
{
	if (self = [super init]) {
		_theList = [[NSMutableArray alloc]init];
	}
	return self;
}

-(id)initWithFile:(NSString *)fileName{
	self = [self init];
	if (self) {
		NSString *filenameAndPath=[[NSBundle mainBundle] pathForResource:fileName ofType:@"plist"];
		NSArray *array=[NSArray arrayWithContentsOfFile:filenameAndPath];
		for(NSDictionary *dict in array){
			Beer *beer=[[Beer alloc]init];
			beer.name=dict[@"name"];
			beer.color=dict[@"color"];
			beer.country=[dict objectForKey:@"country"];
			beer.grade= [dict[@"grade"] integerValue];
			[_theList addObject:beer];
		}
	}
	return self;
}


-(void)addBeer:(Beer *)beer{
	[self.theList addObject:beer];
}

-(void)removeBeer:(Beer *)beer{
	[self.theList removeObject:beer];
}

-(NSUInteger)count{
	return [self.theList count];
}

-(NSArray *)allBeers{
	return self.theList;
}

-(BOOL)removeBeerPro:(Beer *)beer{
	NSUInteger countBefore= [self.theList count];
	[self.theList removeObject:beer];
	NSUInteger countAfter=[self.theList count];
	if(countAfter==countBefore){
		return NO;
	}
	return YES;
}

@end
