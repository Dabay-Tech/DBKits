//
//  UINavigationController+DBExtension.m
//  DBKitDemo
//
//  Created by Dabay on 2017/5/24.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import "UINavigationController+DBExtension.h"
#import "UINavigationBar+DBExtension.h"

@implementation UINavigationController (DBExtension)



/**
 设置navigationBar的背景颜色

 @param BackgroundColor navigationBar的背景颜色
 */
-(void)db_setNavigationBarBackgroundColor:(UIColor *)BackgroundColor{

    UIImage *image=[[UIImage alloc]init];
    [self.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    self.navigationBar.barStyle=UIBarStyleBlackOpaque;
    //这里调用的设置颜色的方法在UINavigationBar+DBExtension中有重写
    [self.navigationBar setBackgroundColor:BackgroundColor];
}

@end
