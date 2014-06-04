//
//  Person.h
//  Beers
//
//  Created by Fernando Garcia Corrochano on 03/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//1º properties
@property (nonatomic,strong)NSString *name;
@property (nonatomic)NSUInteger age;
@property (nonatomic,strong)NSString *address;
@property (nonatomic,getter = isMarried) BOOL married;


//2º class method
+ (id)personWithName:(NSString *)name;
+ (id)personWithName:(NSString *)name
					andAddress:(NSString *)address;

//3º instance methods
- (id)init;//No es necesario overwrite
- (id)initWithName:(NSString *)name;
- (id)initWithName:(NSString *)name
				andAddress:(NSString *)address;
//DESIGNATED INITIALIZER
- (id)initWithName:(NSString *)name
				andAddress:(NSString *)address
						andAge:(NSUInteger)age;

@end
