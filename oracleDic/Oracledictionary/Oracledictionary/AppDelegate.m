//
//  AppDelegate.m
//  Oracledictionary
//
//  Created by bidlink on 14-3-24.
//  Copyright (c) 2014年 bidlink. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewControllView.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    
    
    [self setAnimationBooot];
    [self performSelector:@selector(loadingRootVc:) withObject:self afterDelay:2];
    

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)loadingRootVc:(id)sender
{
    RootViewControllView * rootVc = [[RootViewControllView alloc] init];
    self.window.rootViewController = rootVc;
}
- (void)setAnimationBooot
{

    
    UIView * backView = [[UIView alloc] initWithFrame:self.window.bounds];
    [self.window addSubview:backView];
  
    NSArray * bootImageAy = [NSArray arrayWithObjects:[UIImage imageNamed:@"1.png"],
                             [UIImage imageNamed:@"2.png"],
                             [UIImage imageNamed:@"3.png"],
                             [UIImage imageNamed:@"4.png"],nil];
    
    UIImageView * myImageView = [[UIImageView alloc] init];
    myImageView.frame = CGRectMake(self.window.frame.size.width/2-40, self.window.frame.size.height/2-40, 80, 80);
    myImageView.animationImages = bootImageAy;
    myImageView.animationDuration = 3;
    myImageView.animationRepeatCount = 1;
    [myImageView startAnimating];
    
    [backView addSubview:myImageView];
    
    

    
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
