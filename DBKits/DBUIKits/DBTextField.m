//
//  DBTextField.m
//
//  Created by Donkey-Tao on 15/5/31.
//  Copyright © 2015年 http://taofei.me All rights reserved.
//

#import "DBTextField.h"
#import <objc/runtime.h>


@implementation DBTextField



#pragma mark - 设置placeholder中文字和闪烁光标的颜色

/**
 设置placeholder中文字和闪烁光标的颜色(默认为蓝色改为白色)

 @param db_placeholderAndCursorColor placeholder中文字和闪烁光标的颜色
 */
-(void)setDb_placeholderAndCursorColor:(UIColor *)db_placeholderAndCursorColor{

    _db_placeholderAndCursorColor=db_placeholderAndCursorColor;
    //设置占位文字的颜色
    [self resignFirstResponder];
    //设置光标的颜色与文字颜色一致
    [self setTintColor:self.db_placeholderAndCursorColor];
}





#pragma mark - 初始化DBTextField控件

/**
 Interface Builder的形式创建的控件调用此方法改变光标的颜色(默认设置为白色)
 */
-(void)awakeFromNib{
    [super awakeFromNib];
    //设置占位文字的颜色
    [self resignFirstResponder];
    //设置光标的颜色与文字颜色一致
    [self setTintColor:[UIColor whiteColor]];
}


/**
 代码形式初始化出的对象调用方法实现改变光标的颜色(默认设置为白色)

 @param frame 控件的尺寸
 @return 返回初始化好的空间
 */
-(instancetype)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];// 先调用父类的initWithFrame方法
    //设置占位文字的颜色
    [self resignFirstResponder];
    //设置光标的颜色与文字颜色一致
    [self setTintColor:[UIColor whiteColor]];
    return self;
}





#pragma mark -利用KVC改变placeholder中文字和闪烁光标的颜色

/**
 *当前文本框聚焦时调用
 */
-(BOOL)becomeFirstResponder{
    [self setValue:self.db_placeholderAndCursorColor forKeyPath:@"_placeholderLabel.textColor"];
    return [super becomeFirstResponder];
}


/**
 *当前文本框失去焦点时调用
 */
-(BOOL)resignFirstResponder{

    [self setValue:[UIColor lightGrayColor] forKeyPath:@"_placeholderLabel.textColor"];
    return [super resignFirstResponder];
}


@end
