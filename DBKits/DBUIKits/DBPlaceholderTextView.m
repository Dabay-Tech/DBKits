//
//  DBPlaceholderTextView.m
//  DBKitDemo
//
//  Created by Dabay on 2017/5/27.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import "DBPlaceholderTextView.h"



@interface DBPlaceholderTextView ()<UITextViewDelegate>


/** 提示输入的placeholder的label */
@property(nonatomic,strong) UILabel * placeholderLabel;

/** 提示输入字数限制的label */
@property(nonatomic,strong) UILabel * limitedTipsLabel;

@end






#pragma mark - 具体方法的实现
@implementation DBPlaceholderTextView




+(instancetype)db_textViewWithFrame:(CGRect)frame
                  placeholderString:(NSString *)db_placeholderString
          db_placeholderStringColor:(UIColor *)db_placeholderStringColor
                db_limitedCharacter:(NSInteger)db_limitedCharacter
                db_limitedCharacter:(UIColor *)db_limitedCharacterColor{


    DBPlaceholderTextView * db_textView = [[DBPlaceholderTextView alloc]initWithFrame:frame];
    
    //初始化placeholderLabel
    UILabel * placeholderLabel = [[UILabel alloc]initWithFrame:CGRectMake(5, 10, frame.size.width, 20)];
    placeholderLabel.backgroundColor = [UIColor clearColor];
    placeholderLabel.textColor = db_placeholderStringColor;
    placeholderLabel.text = db_placeholderString;
    placeholderLabel.font = db_textView.font;
    placeholderLabel.textAlignment=NSTextAlignmentLeft;
    [db_textView addSubview:placeholderLabel];
    
    //初始化limitedTipsLabel
    UILabel * limitedTipsLabel = [[UILabel alloc]initWithFrame:CGRectMake(frame.size.width - 50 , frame.size.height - 30 , 50, 30)];
    limitedTipsLabel.backgroundColor=[UIColor clearColor];
    limitedTipsLabel.textColor = db_limitedCharacterColor;
    limitedTipsLabel.text = [NSString stringWithFormat:@"0/%li",(long)db_limitedCharacter];
    limitedTipsLabel.font = db_textView.font;
    limitedTipsLabel.textAlignment = NSTextAlignmentRight;
    [db_textView addSubview:limitedTipsLabel];
    
    return db_textView;


    
}








#pragma mark - UITextViewDelegate--代理方法的实现

//- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
//
//    return YES;
//
//}
//- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
//    return YES;
//
//}

- (void)textViewDidBeginEditing:(UITextView *)textView{//开始编辑时对placeholder的操作
    _placeholderLabel.text = @"";
    _placeholderLabel.hidden=YES;


}
- (void)textViewDidEndEditing:(UITextView *)textView{//结束编辑时对placeholder的操作
    
    if (self.text.length==0) {//如果textView中没有输入相应的字符，在开始编辑时显示placeholder并显示其中的文字
        _placeholderLabel.text = self.db_placeholderString;
        _placeholderLabel.hidden=NO;
    }else{//如果textView中有输入相应的字符，在开始编辑时将placeholder中的文字置为空并隐藏placeholder的label空间
        _placeholderLabel.text = @"";
        _placeholderLabel.hidden=YES;
    }
}

//- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
//    return YES;
//
//}
//- (void)textViewDidChange:(UITextView *)textView{
//
//
//
//}
//
//- (void)textViewDidChangeSelection:(UITextView *)textView{
//
//
//
//}



@end
