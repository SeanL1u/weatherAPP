//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UITabBarController* tabBarControlloer = [UITabBarController new];
    self.window.rootViewController = tabBarControlloer;
    
    UINavigationController* toronto = [[UINavigationController alloc]initWithRootViewController: [[CityVC alloc] initWithCity:[[City alloc] initWithWeather:@"rain" Temp:@"15" andName:@"Toronto"]]];
    [toronto setTitle:@"Toronto"];
    
    UINavigationController* vancouver = [[UINavigationController alloc]initWithRootViewController:[[CityVC alloc] initWithCity:[[City alloc] initWithWeather:@"snow" Temp:@"7" andName:@"Vancouver"]]];
    [vancouver setTitle:@"Vancouver"];
    
    UINavigationController* montreal = [[UINavigationController alloc]initWithRootViewController: [[CityVC alloc] initWithCity:[[City alloc] initWithWeather:@"fog" Temp:@"13" andName:@"Montreal"]]];
    [montreal setTitle:@"Montreal"];
    
    tabBarControlloer.viewControllers = @[toronto,vancouver,montreal];

    
    
    
    
    
    
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
