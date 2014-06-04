//
//  EuroCalculatorViewController.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 03/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "EuroCalculatorViewController.h"

@implementation EuroCalculatorViewController
- (IBAction)buttonPressed:(id)sender {
	//esta forma de hacer la condicion se llama left golden path xq el caso base no queda identado a la derecha y asi es mas sencillo de leer
	if(![sender isKindOfClass:[UIButton class]]){
		return;
	}
	UIButton *b=(UIButton *)sender;
	//cuatro veces lo mismo...
	NSLog(@"presionado el %i",[b tag]);
	NSLog(@"presionado el %@",b.titleLabel.text);
	NSLog(@"presionado el %@",[b titleLabel].text);
	NSLog(@"presionado el %@",[b.titleLabel text]);
}





@end
