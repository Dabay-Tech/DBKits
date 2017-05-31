//
//  DBStack.h
//  DBKitDemo
//
//  Created by Dabay on 2016/5/27.
//  Copyright © 2016年 Dabay. All rights reserved.
//

#import <Foundation/Foundation.h>

// 只要参数是一个id类型的block
typedef void (^StackBlock)(id objc);

@interface DBStack : NSObject


/**
 入栈

 @param objet 将元素入栈
 */
-(void)push:(id)objet;


/**
 出栈

 @return 返回栈顶元素,并将栈顶元素出栈
 */
-(instancetype)popTopElement;



/**
 返回栈顶元素

 @return 返回栈顶元素，栈顶元素不出栈
 */
-(instancetype)TopElement;


/**
 判断栈是否为空

 @return 栈是否为空
 */
-(BOOL)isEmpty;



/**
 获取栈的深度

 @return 栈的深度
 */
-(NSInteger)stackLength;

/**
 遍历，从栈底开始遍历

 @param block StackBlock
 */
-(void)traversalElementFromBottom:(StackBlock)block;


/**
 从顶部开始遍历

 @param block StackBlock
 */
-(void)traversalElementFromtop:(StackBlock)block;



/**
 所有元素出栈，一边出栈一边返回元素

 @param block StackBlock
 */
-(void)traversalElementPopStack:(StackBlock)block;
// 清空



/**
 清空栈中所有元素
 */
-(void)removeAllObjects;



/**
 返回栈顶元素

 @return 栈顶元素
 */
-(instancetype)topElemet;

@end
