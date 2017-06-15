//
//  DBVerticalButton.h
//
//  Created by Donkey-Tao on 15/5/31.
//  Copyright © 2015年 http://taofei.me All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBVerticalButton : UIButton

/**
 设置图标在上，标题在下的按钮

 @param image 默认的按钮图标
 @param selectedImage 选中时候的按钮图标
 @param titleName 按钮的标题
 */
-(void)db_setupHeaderViewImage:(NSString *)image selectedImage:(NSString *)selectedImage titleName:(NSString *)titleName;

@end
