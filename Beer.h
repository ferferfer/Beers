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
	NSString *name;
	NSString *color;
	NSUInteger alcohol;
}

- (void)printBeerInfo;
- (void)printBeerInfoWithHeader:(NSString *)header;
- (void)printBeerInfoWithHeader:(NSString *)header
											andFooter:(NSString *)footer;
- (void)printBeerInfoWithHeader:(NSString *)header
											andFooter:(NSString *)footer
							andNumberOfEmojis:(NSUInteger)numberOfEmojis;


@end
