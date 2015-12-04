//
//  AppDelegate.m
//  QQpractice
//
//  Created by qianfeng on 15/12/3.
//  Copyright © 2015年 李明星. All rights reserved.
//

#import "AppDelegate.h"
#import <TencentOpenAPI/TencentOAuth.h>
#import "FirstViewController.h"
#import "TwoViewController.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


-(BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options
{
    return [TencentOAuth HandleOpenURL:url];
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    ViewController *vc = [[ViewController alloc] init];
    vc.bl = ^(NSString *name){
        FirstViewController *fvc = [[FirstViewController alloc] init];
        fvc.title = @"首页";
        UINavigationController *fnc = [[UINavigationController alloc] initWithRootViewController:fvc];
        
        TwoViewController *tvc = [[TwoViewController alloc] init];
        tvc.title = name;
        UINavigationController *tnc = [[UINavigationController alloc] initWithRootViewController:tvc];
        
        UITabBarController *tbc = [[UITabBarController alloc] init];
        tbc.viewControllers = @[fnc,tnc];
        
        self.window.rootViewController = tbc;
    };
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
