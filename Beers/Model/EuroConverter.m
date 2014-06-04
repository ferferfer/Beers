//
//  EuroConverter.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 03/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "EuroConverter.h"

#define CHANGE 166.386

@implementation EuroConverter

-(CGFloat)convertToEuro{
	return [EuroConverter convertFromPesetaToEuro:self.money];
}
-(NSUInteger)convertToPeseta{
	return [EuroConverter convertFromEuroToPeseta:self.money];
}
+(NSUInteger)convertFromEuroToPeseta:(CGFloat)euros{
	return euros * CHANGE;
}
+(CGFloat)convertFromPesetaToEuro:(NSUInteger)pesetas{
	return pesetas / CHANGE;
}

@end
