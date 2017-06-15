//
//  AppDelegate.m
//  DBKitDemo
//
//  Created by Dabay on 2017/5/5.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import "AppDelegate.h"
#import "DBWebViewController.h"
#import "ViewController.h"
#import "DBLoadingImageView.h"
#import "UINavigationController+DBExtension.h"
#import "DBPlaceholderTextView.h"
#import "DBTextField.h"
#import "DBVerticalButton.h"
#import "DBNavigationViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIWindow *window=[[UIWindow alloc]init];
    self.window=window;
    [self.window makeKeyAndVisible];
    
    
    //测试-设置导航栏颜色的方法
    UIViewController *vc=[[UIViewController alloc]init];
    vc.view.frame=[UIScreen mainScreen].bounds;
    //UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:vc];
    vc.title=@"Demo";
    //[nav db_setNavigationBarBackgroundColor:[UIColor purpleColor]];
    self.window.rootViewController=vc;
    
    
    CGRect frame=CGRectMake(120, 50, 200, 200);
    DBPlaceholderTextView *textView=[[DBPlaceholderTextView alloc ]initWithFrame:frame] ;//placeholderString:@"请输入您的建议~" db_placeholderStringColor:[UIColor redColor] db_limitedCharacter:15 db_limitedCharacter:[UIColor grayColor]];
    textView.text=@"测试-设置导航栏颜色的方法测试-设置导航栏颜色的方法测试-设置导航栏颜色的方法测试-设置导航栏颜色的方法测试-设置导航栏颜色的方法";
    [vc.view addSubview:textView];
    
    
    //DBTextField控件的使用
    DBTextField *textField=[[DBTextField alloc]initWithFrame:CGRectMake(0, 50, 100, 50)];
    textField.db_placeholderAndCursorColor=[UIColor whiteColor];
    textField.backgroundColor=[UIColor lightGrayColor];
    textField.placeholder=@"cursor ";
    [vc.view addSubview:textField];
    
    UITextField *textField1=[[UITextField alloc]initWithFrame:CGRectMake(0, 100, 100, 50)];
    textField1.backgroundColor=[UIColor whiteColor];
    textField1.placeholder=@"cursor";
    [vc.view addSubview:textField1];
    
    
    //DBVerticalButton控件的使用
    DBVerticalButton *button=[[DBVerticalButton alloc]initWithFrame:CGRectMake(0, 200, 50, 80)];
    [button db_setupHeaderViewImage:@"icon_payment" selectedImage:@"icon_payment" titleName:@"打电话"];
    button.backgroundColor=[UIColor whiteColor];
    [vc.view addSubview:button];
    
    //DBLoadingImageView控件的使用
    DBLoadingImageView *loadView=[[DBLoadingImageView alloc]initWithFrame:CGRectMake(0, 300, 50, 50)];
    loadView.backgroundColor=[UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.8];
    [vc.view addSubview:loadView];
    

    
    
    
    
    
    
    
    
    
    
//    DBWebViewController *webVC=[[DBWebViewController alloc]init];
//    webVC.db_urlString =@"http://taofei.me";
//    webVC.view.backgroundColor=[UIColor redColor];
//    
//    DBLoadingImageView *imageView=[[DBLoadingImageView alloc]init];
//    imageView.frame=CGRectMake(100, 100, 100, 100);
//
//    [webVC.view insertSubview:imageView atIndex:0];
//    
//    self.window.rootViewController=[[UINavigationController alloc]initWithRootViewController:webVC];
    
//    UIViewController * vc=[[UIViewController alloc]init];
//    vc.view.frame=[UIScreen mainScreen].bounds;
//    vc.view.backgroundColor=[UIColor lightGrayColor];
    
//    DBLoadingImageView *imageView=[[DBLoadingImageView alloc]init];
//    imageView.frame=CGRectMake(100, 100, 100, 100);
//    
//    [vc.view addSubview:imageView];
//    
//    self.window.rootViewController=vc;
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
