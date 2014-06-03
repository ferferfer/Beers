//
//  Beer.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 02/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "Beer.h"

@implementation Beer


@synthesize name =_name;//no hace falta ni ponerlo

-(NSString *) name{
	return _name;
}
-(void) setName:(NSString *)newName{
	_name=newName;
}

-(NSString *) color{
	return self->color;
}
-(void) setColor:(NSString*)newColor{
		self->color=newColor;
}

-(NSUInteger) grade{;
	return self->grade;
}
-(void) setGrade:(NSUInteger)newGrade{
	self->grade=newGrade;
}

-(NSString *) country{
	return _country;
}
-(void) setCountry:(NSString*)country{
	_country=country;
}

- (void)printBeerInfo{
	NSLog(@"Name: %@", _name);
	NSLog(@"Color: %@", color);
	NSLog(@"Degrees: %d", grade);
}
- (void)printBeerInfoWithHeader:(NSString *)header{
	NSLog(@"%@\n",header);
	[self printBeerInfo];
}
- (void)printBeerInfoWithHeader:(NSString *)header
											andFooter:(NSString *)footer{
	NSLog(@"%@\n",header);
	[self printBeerInfo];
	NSLog(@"%@",footer);
}
- (void)printBeerInfoWithHeader:(NSString *)header
											andFooter:(NSString *)footer
							andNumberOfEmojis:(NSUInteger)numberOfEmojis{
	NSLog(@"%@\n",header);
	[self printBeerInfo];
	NSMutableString *mutFooter;
	for(NSUInteger i=0;i<numberOfEmojis;i++){
		[mutFooter appendString:footer];
	}
	NSLog(@"%@",mutFooter);
}

@end
