//
//  UIColor+DBExtension.h
//  
//  Created by Donkey-Tao on 15/11/5.
//  Copyright © 2015年 http://taofei.me All rights reserved.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (DBExtension)





/**
 从十六进制字符串获取颜色，返回不带透明度的颜色

 @param color 支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 @return 返回UIColor类型的不带透明度的颜色
 */
+ (UIColor *)db_colorWithHexString:(NSString *)color;



/**
 从十六进制字符串获取颜色,返回带透明度的颜色

 @param color 支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 @param alpha 颜色的透明度
 @return 返回UIColor类型的带透明度的颜色
 */
+ (UIColor *)db_colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;


@end
