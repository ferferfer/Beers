//
//  AppDelegate.m
//  Beers
//
//  Created by Fernando Garcia Corrochano on 02/06/14.
//  Copyright (c) 2014 ironHack. All rights reserved.
//

#import "AppDelegate.h"
#import "Beer.h"
#import "Person.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
	
/*  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  // Override point for customization after application launch.
  self.window.backgroundColor = [UIColor whiteColor];
  [self.window makeKeyAndVisible];
	*/
	// idiom
	Beer *mahou = [[Beer alloc] init];
	Beer *cruzcampo = [Beer new]; //se puede pero no se usa peligro de collejas
	Beer *estrellaDamm = [[Beer alloc] init];
	Beer *coronita=[[Beer alloc]init];
	
	[mahou setName:@"Mahou"];
	[mahou setColor:@"Blond"];
	[mahou setGrade:5];
	[cruzcampo setName:@"Cruzcampo"];
	cruzcampo.color=@"blonde";//cuando llamo 
	cruzcampo.grade=4;
	[estrellaDamm setName:@"EstrellaDamm"];
	estrellaDamm.color=@"blonde";
	estrellaDamm.grade=4.2;
	[coronita setName:@"Coronita"];
	coronita.color=@"blonde";
	coronita.grade=5.1;
	
	[mahou printBeerInfo];
	[mahou printBeerInfoWithHeader:@"🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺"];
	[mahou printBeerInfoWithHeader:@"🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺"
											 andFooter:@"🍺"];
	[mahou printBeerInfoWithHeader:@"🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺🍺"
											 andFooter:@"🍺"
							 andNumberOfEmojis:20];
	
	
	//Person
	NSLog(@"--------Person--------");
	Person *Fer = [[Person alloc ]init];

	Fer.name=@"Fer";			//son lo
	[Fer setName:@"Fer"]; //mismo
	
	[Fer setAge:30];
	
	Fer.address=@"C/alameda";
	
	Person *Groucho = [[Person alloc ]init];
	Person *Harpo = [[Person alloc ]initWithName:@"Harpo"];
	Person *Chicco = [[Person alloc ]initWithName:@"Chicco" andAddress:@"C/Alameda"];
	Person *Zeppo = [[Person alloc ]initWithName:@"Zeppo" andAddress:@"C/Alameda" andAge:80];

	
	NSArray *personList=[NSArray arrayWithObjects:Groucho,Harpo,Chicco,Zeppo,nil];

	
	NSMutableArray *partyArray=[NSMutableArray arrayWithArray:personList];
	
	for (NSUInteger i=0;i<100;i++){
		NSString *pName=[NSString stringWithFormat:@"Person %d",i+1];
		
		Person *p = [[Person alloc] initWithName:pName];
		[partyArray addObject:p];
	}
	for (Person *p in partyArray){
		NSLog(@"%@",p.name);
	}
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
