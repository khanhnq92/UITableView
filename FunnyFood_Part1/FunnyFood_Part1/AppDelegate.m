//
//  AppDelegate.m
//  FunnyFood_Part1
//
//  Created by Huy Quang Ngo on 11/2/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import "AppDelegate.h"
#import "MainScreen.h"
#import "AddressVC.h"
#import "AboutVC.h"
#import "DetailVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    MainScreen* main=[[MainScreen alloc] initWithNibName:@"MainScreen" bundle:nil];
    main.title=@"Home";
    UINavigationController* nav=[[UINavigationController alloc] initWithRootViewController:main];
    nav.tabBarItem=[[UITabBarItem alloc] initWithTitle:@"Menu"
                                                 image:[UIImage imageNamed:@"menuWhite.png"]
                                         selectedImage:[UIImage imageNamed:@"menuWhite.png"]];
    
    DetailVC* saleVC=[[DetailVC alloc] init];
    saleVC.isSaleOff=true;
    saleVC.title=@"Sale";
    UINavigationController* saleOffNav=[[UINavigationController alloc] initWithRootViewController:saleVC];
    saleOffNav.tabBarItem=[[UITabBarItem alloc] initWithTitle:@"Sale"
                                                    image:[UIImage imageNamed:@"sale.png"]
                                            selectedImage:[UIImage imageNamed:@"sale.png"]];
    
    AddressVC* addressVC=[[AddressVC alloc] init];
    addressVC.title=@"Address";
    UINavigationController* addressNav=[[UINavigationController alloc] initWithRootViewController:addressVC];
    addressNav.tabBarItem=[[UITabBarItem alloc] initWithTitle:@"Address"
                                                    image:[UIImage imageNamed:@"shopWhite2.png"]
                                            selectedImage:[UIImage imageNamed:@"shopWhite2.png"]];
    AboutVC* aboutVC=[[AboutVC alloc] init];
    aboutVC.title=@"About";
    UINavigationController* aboutNav=[[UINavigationController alloc] initWithRootViewController:aboutVC];
    aboutNav.tabBarItem=[[UITabBarItem alloc] initWithTitle:@"About"
                                                    image:[UIImage imageNamed:@"aboutWhite.png"]
                                            selectedImage:[UIImage imageNamed:@"aboutWhite.png"]];
    
    UITabBarController* tabBar=[[UITabBarController alloc] init];
    tabBar.viewControllers=@[nav,saleOffNav,addressNav,aboutNav];
    //style tabbar
    tabBar.tabBar.tintColor=[UIColor yellowColor];
    tabBar.tabBar.barStyle=UIBarStyleBlack;
    tabBar.tabBar.translucent=NO;
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}
                                             forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor yellowColor]  }
                                            forState:UIControlStateSelected];
    
    //style title navigationBar
    NSShadow* shadow=[[NSShadow alloc] init];
    shadow.shadowColor=[UIColor colorWithRed:1 green:1 blue:1 alpha:0.8];
    shadow.shadowOffset=CGSizeMake(1, 0);
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIColor redColor], NSForegroundColorAttributeName,
                                                          shadow,NSShadowAttributeName,
                                                          [UIFont fontWithName:@"arial rounded mt bold" size:21],NSFontAttributeName,nil]];
    
    
    self.window=[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController=tabBar;
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
