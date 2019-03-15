//
//  AppDelegate.m
//  FlutterHybridDemo
//
//  Created by Huang Peng on 2019/3/15.
//  Copyright © 2019 Lattern. All rights reserved.
//

#import <cyUIKit.h>
#import "AppDelegate.h"
#import "AppearanceUtils.h"
#import "CYTabVC.h"
#import "ViewController.h"
#import "CYFlutterVC.h"
#import "SettingVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    [self configWindow];

    [self configUI];

    return YES;
}

- (void)configWindow {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    [self.window makeKeyAndVisible];
}

- (void)configUI {
    [AppearanceUtils setupTabBar:[CYTabBarConfig configWithTitleColor:[UIColor grayColor]
                                                   titleSelectedColor:[UIColor greenColor]
                                                      backgroundColor:[UIColor whiteColor]
                                                          shadowColor:[UIColor lightGrayColor]]];
    CYTabVC *tabVC = [CYTabVC new];

    [tabVC addTabs:[CYTabConfig tabs:@[
            @[ @"首页", @"tab-chunyu.png", @"tab-chunyu-selected.png", [[ViewController new] cyWrapInNavigationVC]],
            @[ @"我的", @"tab-myservice.png", @"tab-myservice-selected.png", [[ViewController new] cyWrapInNavigationVC]],
            @[ @"设置", @"tab-usercenter.png", @"tab-usercenter-selected.png", [[SettingVC new] cyWrapInNavigationVC]]
    ]]];

    [tabVC apply];

    self.window.rootViewController = tabVC;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
