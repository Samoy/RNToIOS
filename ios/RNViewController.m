//
//  RNViewController.m
//  Demo
//
//  Created by Samoy Young on 2017/2/21.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "RNViewController.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

@interface RNViewController ()

@end

@implementation RNViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  self.view.backgroundColor = [UIColor whiteColor];
  self.title = @"RN界面";
  
  NSURL *jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index.ios" fallbackResource:nil];
  RCTRootView *rootView =
  [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                       moduleName        : @"Demo"
                       initialProperties :
   @{
     @"scores" : @[
         @{
           @"name" : @"Alex",
           @"value": @"42"
           },
         @{
           @"name" : @"Joel",
           @"value": @"10"
           }
         ]
     }
                        launchOptions    : nil];
  //使RN界面充满屏幕
  rootView.frame = self.view.bounds;
  
  
  [self.view addSubview:rootView];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
