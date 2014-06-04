//
//  EuroConverterViewController.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 03/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "EuroConverterViewController.h"
#import "EuroConverter.h"
@interface EuroConverterViewController()
@property (weak, nonatomic) IBOutlet UITextField *moneyField;

@end

@implementation EuroConverterViewController

- (IBAction)convertPtaToE:(id)sender {
	
	NSLog(@"hola");
}

- (IBAction)ptsToEuroButtonPressed:(id)sender {
	NSLog(@"%f",[EuroConverter convertFromPesetaToEuro:[self.moneyField.text floatValue]]);
}
- (IBAction)euroToPtsButtonPressed:(id)sender {
	NSLog(@"%i",[EuroConverter convertFromEuroToPeseta:[self.moneyField.text intValue]]);
}
@end
