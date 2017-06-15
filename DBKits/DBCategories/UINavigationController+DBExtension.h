//
//  UINavigationController+DBExtension.h
//  DBKitDemo
//
//  Created by Dabay on 2017/5/24.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (DBExtension)


/**
 设置navigationBar的背景颜色(此方法在iOS8中会出现Crash)
 
 @param BackgroundColor navigationBar的背景颜色
 */
-(void)db_setNavigationBarBackgroundColor:(UIColor *)BackgroundColor;

@end
