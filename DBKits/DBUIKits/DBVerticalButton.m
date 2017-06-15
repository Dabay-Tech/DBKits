//
//  DBVerticalButton.m
//
//  Created by Donkey-Tao on 15/5/31.
//  Copyright © 2015年 http://taofei.me All rights reserved.
//

#import "DBVerticalButton.h"
#import "UIView+DBExtension.h"

@implementation DBVerticalButton


#pragma mark - 初始化DBVerticalButton控件

/**
 Interface Builder的形式创建控件后设置控件标题文字居中显示
 */
-(void)awakeFromNib{
    
    [super awakeFromNib];
    [self setupButton];
}

/**
 通过代码方式创建控件后设置控件标题文字居中显示

 @param frame 控件的尺寸
 @return 实例化的控件对象
 */
-(instancetype)initWithFrame:(CGRect)frame{
    
    if(self=[super initWithFrame:frame]){
        [self setupButton];
    }
    return self;
}


#pragma mark - 对实例化的对象进行重新的布局调整


/**
 设置按钮的标题文字居中显示
 */
-(void)setupButton{
    self.titleLabel.textAlignment=NSTextAlignmentCenter;
}



/**
 *调整按钮内部的位置
 */
-(void)layoutSubviews{
    
    [super layoutSubviews];
    
    //调整图片位置与大小
    self.imageView.x=0;
    self.imageView.y=0;
    self.imageView.width=self.width;
    self.imageView.height=self.width;
    
    //调整文字位置与大小
    self.titleLabel.x=0;
    self.titleLabel.y=self.imageView.height;
    self.titleLabel.width=self.width;
    self.titleLabel.height=self.height-self.imageView.height;
}


/**
 设置图标在上，标题在下的按钮
 
 @param image 默认的按钮图标
 @param selectedImage 选中时候的按钮图标
 @param titleName 按钮的标题
 */
-(void)db_setupHeaderViewImage:(NSString *)image selectedImage:(NSString *)selectedImage titleName:(NSString *)titleName{
    
    //设置按钮图标和标题
    [self setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateHighlighted];
    [self setTitle:titleName forState:UIControlStateNormal];
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    NSMutableDictionary *atrrs=[NSMutableDictionary dictionary];
    atrrs[NSFontAttributeName]=[UIFont systemFontOfSize:12];//字体保持一致.默认字体大小为12
    atrrs[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
    NSAttributedString *string=[[NSAttributedString alloc]initWithString:titleName attributes:atrrs];
    [self setAttributedTitle:string forState:UIControlStateNormal];
}


@end
