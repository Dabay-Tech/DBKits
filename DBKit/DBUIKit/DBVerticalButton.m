//
//  DBVerticalButton.m
//
//  Created by Donkey-Tao on 15/5/31.
//  Copyright © 2015年 http://taofei.me All rights reserved.
//

#import "DBVerticalButton.h"
#import "UIView+DBExtension.h"

@implementation DBVerticalButton


-(void)awakeFromNib{
    
    [super awakeFromNib];
    [self setupButton];

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



-(instancetype)initWithFrame:(CGRect)frame{

    if(self=[super initWithFrame:frame]){
        [self setupButton];
    }
    return self;

}


-(void)setupButton{

    self.titleLabel.textAlignment=NSTextAlignmentCenter;

}

-(void)db_setupHeaderViewButton:(NSString *)image selectedImage:(NSString *)selectedImage titleName:(NSString *)titleName{
    
    //创建一个button
    [self setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateHighlighted];
    [self setTitle:titleName forState:UIControlStateNormal];
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    NSMutableDictionary *atrrs=[NSMutableDictionary dictionary];
    atrrs[NSFontAttributeName]=[UIFont systemFontOfSize:10];//字体保持一致
    atrrs[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
    NSAttributedString *string=[[NSAttributedString alloc]initWithString:titleName attributes:atrrs];
    [self setAttributedTitle:string forState:UIControlStateNormal];
    
    
}


@end
