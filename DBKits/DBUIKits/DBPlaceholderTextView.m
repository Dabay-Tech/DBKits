//
//  DBPlaceholderTextView.m
//  DBKitDemo
//
//  Created by Dabay on 2017/5/27.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import "DBPlaceholderTextView.h"



@interface DBPlaceholderTextView ()<UITextViewDelegate>
/** placeholder的label */
@property(nonatomic,strong) UILabel * placeholderLabel;
@end






#pragma mark - 具体方法的实现
@implementation DBPlaceholderTextView



-(instancetype)initWithFrame:(CGRect)frame{


    
    
    return nil;

}





#pragma mark - UITextViewDelegate--代理方法的实现

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{

    return YES;

}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    return YES;

}

- (void)textViewDidBeginEditing:(UITextView *)textView{//开始编辑时对placeholder的操作
    _placeholderLabel.text = @"";


}
- (void)textViewDidEndEditing:(UITextView *)textView{//结束编辑时对placeholder的操作
    
    if (self.text.length==0) {
        _placeholderLabel.text = self.db_placeholderString;
    }else{
        _placeholderLabel.text = @"";
    }
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    return YES;

}
- (void)textViewDidChange:(UITextView *)textView{



}

- (void)textViewDidChangeSelection:(UITextView *)textView{



}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction NS_AVAILABLE_IOS(10_0){
    return YES;
}
- (BOOL)textView:(UITextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction NS_AVAILABLE_IOS(10_0){
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange NS_DEPRECATED_IOS(7_0, 10_0, "Use textView:shouldInteractWithURL:inRange:forInteractionType: instead"){
    return YES;

}
- (BOOL)textView:(UITextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange NS_DEPRECATED_IOS(7_0, 10_0, "Use textView:shouldInteractWithTextAttachment:inRange:forInteractionType: instead"){

    return YES;
}



@end
