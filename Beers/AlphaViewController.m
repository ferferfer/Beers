//
//  AlphaViewController.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 03/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "AlphaViewController.h"

@interface AlphaViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation AlphaViewController

- (IBAction)slideSlider:(id)sender {
	UISlider *slider=(UISlider *) sender;
	self.image.alpha=slider.value;
	/*self.image.alpha=[slider.value];
	[self.image setAlpha:slider.value];
	[[self image] setAlpha:[slider value]];*/
	 
}
- (IBAction)pressButton:(id)sender {
	static BOOL toggle = YES;
	toggle=!toggle;
	if (toggle) {
		self.image.image=[UIImage imageNamed:@"Doctor.jpg"];
	}else{
		self.image.image=[UIImage imageNamed:@"Tardis.jpg"];
	}
	
}
#define URL @"http://imagenestiernas.info/wp-content/uploads/2013/07/1044902_339433749522071_1550980082_n.jpg"
- (IBAction)downloadButton:(id)sender {
	NSURL *theURL =[ NSURL URLWithString:URL];
	NSData *data =[NSData dataWithContentsOfURL:theURL];
	self.image.image=[UIImage imageWithData:data];
}

@end
