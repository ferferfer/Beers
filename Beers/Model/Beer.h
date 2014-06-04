//
//  Beer.h
//  Beers
//
//  Created by Fernando Garcia Corrochano on 02/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Beer : NSObject{
	//instance Vars
	NSString *color;
	NSUInteger grade;
	NSString *_country;//notacion que define una vble privada _
}

//getters y setters
@property (nonatomic,strong) NSString *name;

-(NSString *) color;
-(void) setColor:(NSString*)newColor;

-(NSUInteger) grade;
-(void) setGrade:(NSUInteger)newGrade;

-(NSString *) country;
-(void) setCountry:(NSString*)newCountry;

- (void)printBeerInfo;
- (void)printBeerInfoWithHeader:(NSString *)header;
- (void)printBeerInfoWithHeader:(NSString *)header
											andFooter:(NSString *)footer;
- (void)printBeerInfoWithHeader:(NSString *)header
											andFooter:(NSString *)footer
							andNumberOfEmojis:(NSUInteger)numberOfEmojis;


@end
