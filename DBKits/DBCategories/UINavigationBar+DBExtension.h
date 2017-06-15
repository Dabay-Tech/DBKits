//
//  UINavigationBar+DBExtension.h
//  DBKitDemo
//
//  Created by Dabay on 2017/5/24.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (DBExtension)

/**
 重写设置背景颜色的方法(此方法在iOS8中会出现Crash)
 
 @param backgroundColor UINavigationBar的背景颜色
 */
-(void)setBackgroundColor:(UIColor *)backgroundColor;

@end
