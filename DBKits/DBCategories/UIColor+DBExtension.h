//
//  UIColor+DBExtension.h
//  
//  Created by Donkey-Tao on 15/11/5.
//  Copyright © 2015年 http://taofei.me All rights reserved.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (DBExtension)

+ (UIColor *)db_colorWithHexString:(NSString *)color;

//从十六进制字符串获取颜色，
//color:支持@“#123456”、 @“0X123456”、 @“123456”三种格式
+ (UIColor *)db_colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;


@end
