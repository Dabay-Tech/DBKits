//
//  DBLoadingImageView.h
//  DBKitDemo
//
//  Created by Dabay on 2017/5/22.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBLoadingImageView : UIImageView


/**
 重写改方法，实现图片的旋转

 @param frame 图片的尺寸
 @return 返回带有旋转效果的imageView
 */
- (instancetype)initWithFrame:(CGRect)frame;

@end
