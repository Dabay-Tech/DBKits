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
@property(nonatomic,strong) UIColor * db_placeholderStringColor;

/** TextView中可以输入的字符数 */
@property(nonatomic,assign) NSInteger db_limitedCharacter;

/** TextView中可以输入的字符数Label的文字的颜色 */
@property(nonatomic,strong) UIColor * db_limitedCharacterColor;


+(instancetype)db_textViewWithFrame:(CGRect)frame
                  placeholderString:(NSString *)db_placeholderString
          db_placeholderStringColor:(UIColor *)db_placeholderStringColor
                db_limitedCharacter:(NSInteger)db_limitedCharacter
                db_limitedCharacter:(UIColor *)db_limitedCharacterColor;



@end
