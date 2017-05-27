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
    UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:vc];
    [nav db_setNavigationBarBackgroundColor:[UIColor redColor]];
    
    
    CGRect frame=CGRectMake(100, 100, 200, 200);
    DBPlaceholderTextView *textView=[DBPlaceholderTextView db_textViewWithFrame:frame placeholderString:@"请输入您的建议~" db_placeholderStringColor:[UIColor redColor] db_limitedCharacter:15 db_limitedCharacter:[UIColor grayColor]];
    textView.text=@"测试-设置导航栏颜色的方法测试-设置导航栏颜色的方法测试-设置导航栏颜色的方法测试-设置导航栏颜色的方法测试-设置导航栏颜色的方法";
    [vc.view addSubview:textView];
    
    
    
    
    
    self.window.rootViewController=nav;
    
    
    
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
