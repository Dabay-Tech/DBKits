//
//  UITabBarController+DBExtension.h
//  DBKitDemo
//
//  Created by Dabay on 2017/5/24.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBarController (DBExtension)


/**
 未测试--替换UITabBarController中的一个子控制器(子控制器包装在导航控制器UINavigationController里面)
 
 @param replacedController 要被替换的控制器
 @param controller 最终要显示的控制器
 */
-(void)db_replaceTabBarChildViewController:(UIViewController *)replacedController WithController:(UIViewController *)controller;

@end
