//
//  EuroConverter.h
//  Beers
//
//  Created by Fernando Garcia Corrochano on 03/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EuroConverter : NSObject

@property(nonatomic)CGFloat money;

-(CGFloat)convertToEuro;
-(NSUInteger)convertToPeseta;
+(NSUInteger)convertFromEuroToPeseta:(CGFloat)euros;
+(CGFloat)convertFromPesetaToEuro:(NSUInteger)pesetas;

@end
