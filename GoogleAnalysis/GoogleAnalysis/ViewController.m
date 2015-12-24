//
//  ViewController.m
//  GoogleAnalysis
//
//  Created by tang on 15/12/24.
//  Copyright © 2015年 shunzhitang. All rights reserved.
//

#import "ViewController.h"
#import "AppsFlyerLib/AppsFlyerTracker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    [[AppsFlyerTracker sharedTracker] trackEvent:AFEventLevelAchieved withValues:@{ AFEventParamLevel: @9,AFEventParamScore : @100 }];
    
    [AppsFlyerTracker sharedTracker].currencyCode = @"GBP";
    
    
    NSLog(@" %@" , [AppsFlyerTracker sharedTracker].currencyCode);
    [[AppsFlyerTracker sharedTracker] trackEvent:AFEventPurchase withValues: @{ AFEventParamContentId:@"1234567",
                                                                                AFEventParamContentType : @"category_a",
                                                                                AFEventParamRevenue: @200,
                                                                                AFEventParamCurrency:@"USD"}];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    
    NSLog(@" %@" , [[AppsFlyerTracker sharedTracker] getAppsFlyerUID]);
    
}

@end
