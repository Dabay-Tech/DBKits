//
//  DBTextField.h

//
//  Created by Donkey-Tao on 15/5/31.
//  Copyright © 2015年 http://taofei.me All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBTextField : UITextField


/**
 设置placeholder中文字和闪烁光标的颜色(默认为蓝色改为白色)
 */
@property(nonatomic,strong) UIColor * db_placeholderAndCursorColor;

@end
