//
//  BeerListViewController.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 05/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "BeerListViewController.h"
#import "BeerList.h"
#import "Beer.h"
#import "Person.h"
#import "PersonList.h"

@interface BeerListViewController ()

@property (weak, nonatomic) IBOutlet UIPickerView *pickerBeer;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerPerson;
@property (nonatomic,strong)BeerList *beerList;
@property (nonatomic,strong)PersonList *personList;

@end

@implementation BeerListViewController

/*manual way
 
-(BeerList *)beerList{
	if (_beerList==nil) {
    _beerList	= [[BeerList alloc]init];
		for(int i=0; i<100;i++){
			//add beer
			Beer *beer = [[Beer alloc]init];
			beer.name=[NSString stringWithFormat:@"🍺 Beer %i",i];
			[_beerList addBeer:beer];
		}
	}
	return _beerList;
}*/

-(BeerList *)beerList{
	if (_beerList==nil) {
    _beerList	= [[BeerList alloc]initWithFile:@"beerList"];
	}
	return _beerList;
}

-(PersonList *)personList{
	if (_personList==nil) {
    _personList	= [[PersonList alloc]init];
		for(int i=0; i<100;i++){
			//add person
			Person *person = [[Person alloc]initWithName:[NSString stringWithFormat:@"👦 Person %i",i]];
			NSLog(@"se llama: %@",person.name);
			[_personList addPerson:person];
		}
	}
	return _personList;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
	[super viewDidLoad];
	//self.pickerBeer.delegate=self;
	//self.pickerBeer.dataSource=self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Picker View Delegate Methods

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
	return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
	if(pickerView.tag==0){
		return [self.beerList count];
	}
	if(pickerView.tag==1){
		return [self.personList count];
	}
	return 0;

}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
	
	if(pickerView.tag==0){
		//Beer *beer=[[self.beerList allBeers] objectAtIndex:row];
		//Two lines are equal
		Beer *beer=[self.beerList allBeers][row];
		return beer.name;
	}
	if(pickerView.tag==1){
		Person *person=[[self.personList allPersons] objectAtIndex:row];
		return person.name;
	}
	return nil;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
