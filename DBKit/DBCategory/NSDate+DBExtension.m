//
//  NSDate+TFExtension.m
//
//  Created by Donkey-Tao on 15/6/1.
//  Copyright © 2015年 http://taofei.me All rights reserved.
//

#import "NSDate+DBExtension.h"

@implementation NSDate (DBExtension)
/**
 *比较from和self的时间差
 */
-(NSDateComponents *)db_deltaFrom:(NSDate *)from{

    
    //日历
    NSCalendar *calendar=[NSCalendar currentCalendar];
    
    //比较时间
    NSDateComponents *cmps=[calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitSecond fromDate:from toDate:self options:0];
    
    return cmps;


}



/**
 *判断是否是今年
 */
-(BOOL)db_isThisYear{
    
    //日历
    NSCalendar *calendar=[NSCalendar currentCalendar];
    
    NSInteger nowYear=[calendar component:NSCalendarUnitYear fromDate:[NSDate date]];
    NSInteger selfYear=[calendar component:NSCalendarUnitYear fromDate:self];

    return nowYear==selfYear;
}

/**
 *判断是否是今天
 */
-(BOOL)db_isToday{
    //日历
    NSCalendar *calendar=[NSCalendar currentCalendar];
    
    
    NSCalendarUnit unit=NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay;
    NSDateComponents *nowCmps=[calendar components:unit fromDate:[NSDate date]];
    NSDateComponents *selfCmps=[calendar components:unit fromDate:self];
    
    return nowCmps.year==selfCmps.year&&nowCmps.month==selfCmps.month&&nowCmps.day==selfCmps.day;
}

/**
 *判断是否是昨天
 */
-(BOOL)db_isYesterday{
    //去掉时分秒
    NSDateFormatter *fmt=[[NSDateFormatter alloc]init];
    fmt.dateFormat=@"yyyy-MM-dd";
    
    NSDate *nowDate=[fmt dateFromString:[fmt stringFromDate:[NSDate date]]];
    NSDate *selfDate=[fmt dateFromString:[fmt stringFromDate:self]];
    
    //日历
    NSCalendar *calendar=[NSCalendar currentCalendar];
    
   NSDateComponents *cmps= [calendar components:NSCalendarUnitDay|NSCalendarUnitYear|NSCalendarUnitMonth fromDate:selfDate toDate:nowDate options:0];

    return cmps.year==0&&cmps.month==0&&cmps.day==1;
}


@end
