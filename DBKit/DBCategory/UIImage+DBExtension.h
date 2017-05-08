//
//  UIImage+TFExtension.h
//
//  Created by Donkey-Tao on 15/6/8.
//  Copyright © 2015年 http://taofei.me All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (DBExtension)


/**
 *圆形图片
 *
 */
-(UIImage *)db_circleImage;




/**
 *  自由拉伸一张图片
 *
 *  @param name 图片名字
 *  @param left 左边开始位置比例  值范围0-1
 *  @param top  上边开始位置比例  值范围0-1
 *
 *  @return 拉伸后的Image
 */
+ (UIImage *)db_resizedImageWithName:(NSString *)name left:(CGFloat)left top:(CGFloat)top;




/**
 *  根据颜色和大小获取Image
 *
 *  @param color 颜色
 *  @param size  大小
 *
 */
+ (UIImage *)db_imageWithColor:(UIColor *)color size:(CGSize)size;




/**
 *  根据图片和颜色返回一张加深颜色以后的图片
 */
+ (UIImage *)db_colorizeImage:(UIImage *)baseImage withColor:(UIColor *)theColor;




/**
 *  根据图片返回一张高斯模糊的图片
 *
 *  @param blur 模糊系数
 *
 *  @return 新的图片
 */
- (UIImage *)db_boxblurImageWithBlur:(CGFloat)blur;




/**
 *  自由改变Image的大小
 *
 *  @param size 目的大小
 *
 *  @return 修改后的Image
 */
- (UIImage *)db_cropImageWithSize:(CGSize)size;




/**
 * 根据字符串生成二维码图片UIImage
 *
 * @param dataString 二维码中内容
 * @param widthAndHeight 图片的宽高(二维码是正方形的,所以宽高相等)
 *
 * @return 生成的二维码图片
 */
+(UIImage *)db_QRCodeImageWithDataString:(NSString *)dataString WidthAndHeight:(CGFloat)widthAndHeight;




/**
 * 根据CIImage生成指定大小的UIImage
 *
 * @param image CIImage
 * @param size 图片宽度
 */
+ (UIImage *)db_createNonInterpolatedUIImageFormCIImage:(CIImage *)image withSize:(CGFloat) size;

@end
