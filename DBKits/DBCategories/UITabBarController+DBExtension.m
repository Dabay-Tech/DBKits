//
//  UITabBarController+DBExtension.m
//  DBKitDemo
//
//  Created by Dabay on 2017/5/24.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import "UITabBarController+DBExtension.h"

@implementation UITabBarController (DBExtension)


/**
 未测试--替换UITabBarController中的一个子控制器(子控制器包装在导航控制器UINavigationController里面)

 @param replacedController 要被替换的控制器
 @param controller 最终要显示的控制器
 */
-(void)db_replaceTabBarChildViewController:(UIViewController *)replacedController WithController:(UIViewController *)controller{
    
    for (UINavigationController * nav in self.childViewControllers) {
        NSLog(@"TF---tabBar控制器--%@",nav.childViewControllers.lastObject);
        
        if([[nav.childViewControllers.lastObject class] isKindOfClass:[replacedController class]]){
            [nav.childViewControllers.lastObject removeFromParentViewController];
            NSMutableArray *array=[NSMutableArray array];
            [array addObject:controller];
            [nav setViewControllers:array];
        }
        NSLog(@"TF---tabBar控制器--%@",nav.childViewControllers.lastObject);
    }
    NSLog(@"TF---tabBar控制器--%@",self.childViewControllers);
}


@end
