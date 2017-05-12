//
//  DBTextField.m
//
//  Created by Donkey-Tao on 15/5/31.
//  Copyright © 2015年 http://taofei.me All rights reserved.
//

#import "DBTextField.h"
#import <objc/runtime.h>


@implementation DBTextField


//属性,方法,代理,runtime,自己写
-(void)awakeFromNib{
    [super awakeFromNib];
    //设置占位文字的颜色
    [self resignFirstResponder];
    //设置光标的颜色与文字颜色一致
    [self setTintColor:self.db_placeholderColor];
}


/**
 *当前文本框聚焦时调用
 */
-(BOOL)becomeFirstResponder{
    [self setValue:self.db_placeholderColor forKeyPath:@"_placeholderLabel.textColor"];
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
