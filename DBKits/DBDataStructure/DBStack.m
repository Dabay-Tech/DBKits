//
//  DBStack.m
//  DBKitDemo
//
//  Created by Dabay on 2015/5/27.
//  Copyright © 2015年 Dabay. All rights reserved.
//

#import "DBStack.h"

@interface DBStack()


// 有入栈就有出栈的时候，使用强引用，就要记得释放引用
/** NSMutableArray */
@property (nonatomic,strong)NSMutableArray *stackArray;

/** top of stack */
@property (nonatomic,assign)NSInteger top;

/** stack */
//@property (nonatomic,weak)StackBlock stackBlock;


@end



@implementation DBStack



/**
 入栈
 
 @param objet 将元素入栈
 */
-(void)push:(id)objet{
    [self.stackArray addObject:objet];
}

/**
 出栈
 
 @return 返回栈顶元素,并将栈顶元素出栈
 */
-(instancetype)popTopElement{
    id objc = [self.stackArray lastObject];
    [self.stackArray removeLastObject];
    return objc;
}

/**
 返回栈顶元素
 
 @return 返回栈顶元素，栈顶元素不出栈
 */
-(instancetype)TopElement{
    return [self.stackArray lastObject];
}

/**
 判断栈是否为空
 
 @return 栈是否为空
 */
-(BOOL)isEmpty{
    return self.stackArray.count;
}

/**
 获取栈的深度
 
 @return 栈的深度
 */
-(NSInteger)stackLength{
    return self.stackArray.count;
}

/**
 遍历，从栈底开始遍历
 
 @param block StackBlock
 */
-(void)traversalElementFromBottom:(StackBlock)block{
    NSEnumerator *objc = [self.stackArray objectEnumerator];
    for (id element in objc) {
        block(element);
    }
}

/**
 从顶部开始遍历
 
 @param block StackBlock
 */
-(void)traversalElementFromtop:(StackBlock)block{
    // 先获取存储元素的个数
    NSInteger count = self.stackArray.count;
    for (NSInteger i = count; i > 0; i --) {
        // 处理最后一个元素
        block([self.stackArray objectAtIndex:i]);
    }
}

/**
 所有元素出栈，一边出栈一边返回元素
 
 @param block StackBlock
 */
-(void)traversalElementPopStack:(StackBlock)block{
    // 先获取存储元素的个数
    NSInteger count = self.stackArray.count;
    for (NSInteger i = count; i > 0; i --) {
        // 处理最后一个元素
        block(self.stackArray.lastObject);
        [self.stackArray removeLastObject];
    }
}

/**
 返回栈顶元素
 
 @return 栈顶元素
 */
-(instancetype)topElemet{
    return self.stackArray.lastObject;
}

/**
 清空栈中所有元素
 */
-(void)removeAllObjects{
    [self.stackArray removeAllObjects];
}

#pragma mark - 懒加载
-(NSMutableArray*)stackArray{
    if (_stackArray == nil) {
        _stackArray = [NSMutableArray array];
    }
    return _stackArray;
}
-(NSInteger)top{
    _top = self.stackArray.count;
    return _top;
}

#pragma mark - 不存在该对象的时候，自动清空
- (void)dealloc{
    [self.stackArray removeAllObjects];
}


@end
