//
//  Beer.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 02/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "Beer.h"

@implementation Beer

- (void)printBeerInfo{
	NSLog(@"Name: %@", name);
	NSLog(@"Color: %@", color);
	NSLog(@"Degrees: %d", alcohol);
}
- (void)printBeerInfoWithHeader:(NSString *)header{
	NSLog(@"%@\n",header);
	[self printBeerInfo];
}
- (void)printBeerInfoWithHeader:(NSString *)header
											andFooter:(NSString *)footer{
	NSLog(@"%@\n",header);
	[self printBeerInfo];
	NSLog(@"\n%@",footer);
}
- (void)printBeerInfoWithHeader:(NSString *)header
											andFooter:(NSString *)footer
							andNumberOfEmojis:(NSUInteger)numberOfEmojis{
	NSLog(@"%@\n",header);
	[self printBeerInfo];	
	for(NSUInteger i=0;i<numberOfEmojis;i++){
		NSLog(@"%@\r",footer);
	}
}

@end
