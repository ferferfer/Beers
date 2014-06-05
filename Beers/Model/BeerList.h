//
//  BeerList.h
//  Beers
//
//  Created by Fernando Garcia Corrochano on 04/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Beer.h"
@interface BeerList : NSObject

@property (nonatomic) NSUInteger count;


-(void)addBeer:(Beer *)beer;
-(void)removeBeer:(Beer *)beer;
-(NSUInteger)count;
-(NSArray *)allBeers;
-(BOOL)removeBeerPro:(Beer *)beer;

@end
