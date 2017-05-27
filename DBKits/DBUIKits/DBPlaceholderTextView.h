//
//  DBPlaceholderTextView.h
//  DBKitDemo
//
//  Created by Dabay on 2017/5/27.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBPlaceholderTextView : UITextView


/** TextView的placehoder中显示的文字 */
@property(nonatomic,copy) NSString * db_placeholderString;

/** TextView的placehoder中显示的文字的颜色 */
@property(nonatomic,strong) UIColor * db_placeholderColor;

/** TextView中可以输入的字符数 */
@property(nonatomic,assign) NSInteger db_limitedCharacter;


@end
