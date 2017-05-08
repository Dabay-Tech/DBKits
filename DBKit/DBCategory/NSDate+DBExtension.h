//
//  NSDate+DBExtension.h
//
//  Created by Donnkey-Tao on 15/6/1.
//  Copyright © 2015年 http://taofei.me All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (DBExtension)


/**
 *比较from和self的时间差
 */
-(NSDateComponents *)db_deltaFrom:(NSDate *)from;


/**
 *判断是否是今年
 */
-(BOOL)db_isThisYear;



/**
 *判断是否是今天
 */
-(BOOL)db_isToday;



/**
 *判断是否是昨天
 */
-(BOOL)db_isYesterday;

@end
