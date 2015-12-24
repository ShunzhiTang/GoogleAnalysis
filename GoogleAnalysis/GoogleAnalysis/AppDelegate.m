//
//  AppDelegate.m
//  GoogleAnalysis
//
//  Created by tang on 15/12/24.
//  Copyright © 2015年 shunzhitang. All rights reserved.
//

#import "AppDelegate.h"
#import "AppsFlyerLib/AppsFlyerTracker.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    
    [AppsFlyerTracker sharedTracker].appsFlyerDevKey = @"[6piuUAtVneuUyqWaPS5eZE]";
    [AppsFlyerTracker sharedTracker].appleAppID = @"1040749171";
    
    
    
    return YES;
}

-  (void)applicationDidBecomeActive:(UIApplication *)application{
    
    [[AppsFlyerTracker sharedTracker]trackAppLaunch];
}




@end
