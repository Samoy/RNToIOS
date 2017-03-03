/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "AppDelegate.h"
#import "RNViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

  //初始化导航根视图
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  UIViewController *rootViewController = [UIViewController new];
  rootViewController.title = @"首页";
  rootViewController.view.backgroundColor = [UIColor whiteColor];
  UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:rootViewController];
  self.window.rootViewController = nav;
  [self.window makeKeyAndVisible];
  
  //添加跳转按钮
  UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
  button.frame = CGRectMake(0, 0, 100, 30);
  button.center = CGPointMake(rootViewController.view.frame.size.width/2, rootViewController.view.frame.size.height/2);
  [button setTitle:@"点击跳转" forState:UIControlStateNormal];
  [button addTarget:self action:@selector(gotoRN) forControlEvents:UIControlEventTouchUpInside];
  [rootViewController.view addSubview:button];
  
  return YES;
}

//点击按钮后跳转至RN页面
- (void)gotoRN{
  UINavigationController *nav = (UINavigationController *)self.window.rootViewController;
  [nav pushViewController:[[RNViewController alloc] init] animated:YES];
}

@end
