//
//  DBLoadingImageView.m
//  DBKitDemo
//
//  Created by Dabay on 2017/5/22.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import "DBLoadingImageView.h"


@interface DBLoadingImageView () {
    dispatch_source_t timer;
}

@end

@implementation DBLoadingImageView


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        imageView.image = [UIImage imageNamed:@"loading_bg"];
        [self addSubview:imageView];
        
        timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
        dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 0.04 * NSEC_PER_SEC, 0 * NSEC_PER_SEC);
        dispatch_source_set_event_handler(timer, ^{
            [UIView animateWithDuration:0.04 animations:^{
                imageView.transform = CGAffineTransformRotate(imageView.transform, -M_PI_4/4);
            } completion:^(BOOL finished) {
            }];
        });
        dispatch_resume(timer);
    }
    return self;
}



@end
