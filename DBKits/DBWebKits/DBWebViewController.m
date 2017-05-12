//
//  DBWebViewController.m
//  DBKitDemo
//
//  Created by Dabay on 2017/5/9.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import "DBWebViewController.h"
#import <WebKit/WebKit.h>
#import <MBProgressHUD+DBExtension.h>

@interface DBWebViewController ()<WKNavigationDelegate,WKUIDelegate,WKScriptMessageHandler>

@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) WKUserContentController* userContentController;

@end

@implementation DBWebViewController


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //初始化控制器
    [self setup];
    
}





/**
 初始化DBWebViewController
 */
-(void)setup{


    self.title=@"博客";
    
    CGRect topframe = CGRectMake(0,0,[UIScreen mainScreen].bounds.size.width,20);
    UIView *topview = [[UIView alloc] initWithFrame:topframe];
    topview.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:topview];
    WKWebViewConfiguration * configuration = [[WKWebViewConfiguration alloc]init];
    self.userContentController =[[WKUserContentController alloc]init];
    configuration.userContentController = self.userContentController;
    
    CGRect rect = [[UIScreen mainScreen] bounds];
    CGSize size = rect.size;
    CGFloat width = size.width;
    CGFloat height = size.height;
    CGRect bounds = CGRectMake(0, 20, width, height-20);
    self.webView = [[WKWebView alloc]initWithFrame:bounds configuration:configuration];
    self.webView.scrollView.backgroundColor = [UIColor whiteColor];

    
    
    [self.view addSubview:self.webView];
    self.webView.UIDelegate = self;
    self.webView.navigationDelegate = self;
    self.webView.scrollView.bounces = NO;
    

    NSURL *url = [NSURL URLWithString:self.db_urlString];
    NSLog(@"请求地址 url = %@",url);
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}



#pragma mark - WKNavigationDelegate--页面加载过程的追踪的代理方法

// 页面开始加载时调用--用来追踪加载过程
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{

    [MBProgressHUD db_showMessage:@"加载中"];
    NSLog(@"页面开始加载时调用--用来追踪加载过程--页面开始加载");
}
// 当内容开始返回时调用--用来追踪加载过程
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
    NSLog(@"当内容开始返回时调用--用来追踪加载过程--页面内容返回");
}
// 页面加载完成之后调用--用来追踪加载过程
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{

    NSLog(@"页面加载完成之后调用--用来追踪加载过程--页面加载完成");
//    [[[UIApplication sharedApplication].windows lastObject] removeFromSuperview];
}
// 页面加载失败时调用--用来追踪加载过程
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation{
    NSLog(@"页面加载失败时调用--用来追踪加载过程--页面加载加载失败");
    [MBProgressHUD db_showMessage:@"页面加载失败"];
}

#pragma mark - WKNavigationDelegate--页面跳转的代理方法

// 接收到服务器跳转请求之后调用--页面跳转的代理方法
- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation{

    NSLog(@"接收到服务器跳转请求之后调用--页面跳转的代理方法--服务器");
}
// 在收到响应后，决定是否跳转--页面跳转的代理方法
- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
    //允许跳转
    decisionHandler(WKNavigationResponsePolicyAllow);
    //不允许跳转
    //decisionHandler(WKNavigationResponsePolicyCancel);
    NSLog(@"在收到响应后，决定是否跳转--页面跳转的代理方法--服务器");
}
// 在发送请求之前，决定是否跳转--页面跳转的代理方法
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
    //允许跳转
    decisionHandler(WKNavigationActionPolicyAllow);
    //不允许跳转
    //decisionHandler(WKNavigationActionPolicyCancel);
    NSLog(@"在发送请求之前，决定是否跳转--页面跳转的代理方法--服务器");
}

#pragma mark - WKUIDelegate--处理web界面的三种提示框(警告框、确认框、输入框)
/**
 *  web界面中有弹出警告框时调用
 *
 *  @param webView           实现该代理的webview
 *  @param message           警告框中的内容
 *  @param completionHandler 警告框消失调用
 */
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(void (^)())completionHandler{


}

#pragma mark - WKScriptMessageHandler--
// 从web界面中接收到一个脚本时调用
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message{
    NSLog(@"从web界面中接收到一个脚本时调用");
}


- (void)webView:(WKWebView *)webView didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *credential))completionHandler {
    if ([challenge.protectionSpace.authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust]) {
        
        if ([challenge previousFailureCount] == 0) {
            NSURLCredential *credential = [NSURLCredential credentialForTrust:challenge.protectionSpace.serverTrust];
            completionHandler(NSURLSessionAuthChallengeUseCredential, credential);
        } else {
            completionHandler(NSURLSessionAuthChallengeCancelAuthenticationChallenge, nil);
        }
    } else {
        completionHandler(NSURLSessionAuthChallengeCancelAuthenticationChallenge, nil);
    }
}

@end
