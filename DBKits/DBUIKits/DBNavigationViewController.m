//
//  DBNavigationViewController.m
//  DBKitDemo
//
//  Created by Dabay on 2017/5/24.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import "DBNavigationViewController.h"

@interface DBNavigationViewController ()

@end

@implementation DBNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setup];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


-(void)setup{

    //设置导航控制器的导航栏的染色颜色
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
}



@end
