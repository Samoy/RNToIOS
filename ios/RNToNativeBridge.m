
//
//  RNToNativeBridge.m
//  Demo
//
//  Created by Samoy Young on 2017/2/22.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "RNToNativeBridge.h"
#import "NativeViewController.h"


@implementation RNToNativeBridge

@synthesize bridge =_bridge;

//导出原生模块供RN端获取
RCT_EXPORT_MODULE();

//导出原生方法供RN端调用
RCT_EXPORT_METHOD(gotoNative:(NSString*)title){
  NSLog(@"%@",title);
  dispatch_async(dispatch_get_main_queue(), ^{
    NativeViewController *nvc = [[NativeViewController alloc] init];
    UINavigationController *nav = (UINavigationController*)[UIApplication sharedApplication].keyWindow.rootViewController;
    nvc.title = title;
    [nav pushViewController:nvc animated:YES];
  });
}

@end
