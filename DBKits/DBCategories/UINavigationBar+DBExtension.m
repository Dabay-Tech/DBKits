//
//  UINavigationBar+DBExtension.m
//  DBKitDemo
//
//  Created by Dabay on 2017/5/24.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import "UINavigationBar+DBExtension.h"

@implementation UINavigationBar (DBExtension)


/**
 重写设置背景颜色的方法(此方法在iOS8中会出现Crash)

 @param backgroundColor UINavigationBar的背景颜色
 */
-(void)setBackgroundColor:(UIColor *)backgroundColor{
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, -20, self.bounds.size.width, 64)];
    view.backgroundColor=backgroundColor;
    [self setValue:view forKey:@"backgroundView"];
}

@end
