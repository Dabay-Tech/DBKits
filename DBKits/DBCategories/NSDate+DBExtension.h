//
//  NSDate+DBExtension.h
//
//  Created by Donnkey-Tao on 15/6/1.
//  Copyright © 2015年 http://taofei.me All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (DBExtension)




/**
 比较from和self的时间差

 @param from 开始日期
 @return 返回比较结果
 */
-(NSDateComponents *)db_deltaFrom:(NSDate *)from;



/**
 判断是否是今年

 @return 返回是否为今年
 */
-(BOOL)db_isThisYear;


/**
 判断是否为今天

 @return 返回结果是否为今天
 */
-(BOOL)db_isToday;




/**
 判断是否是昨天

 @return 返回BOOL类型的是否为昨天
 */
-(BOOL)db_isYesterday;

@end
