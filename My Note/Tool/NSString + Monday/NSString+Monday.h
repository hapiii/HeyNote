//
//  NSString+Monday.h
//  倒计时
//
//  Created by 王强 on 16/7/17.
//  Copyright © 2016年 王强. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (Monday)

/**
 *  根据用户输入的时间(dateString)确定当天是星期几,,如 2015-12-18
 *
 *  @param dateString 输入的时间格式 yyyy-MM-dd
 *  如：  NSLog(@"this day is %@", [NSString getTheDayOfTheWeekByDateString:@"2016-7-9"]);
 *  @return 星期几；
 */
+(NSString *)getTheDayOfTheWeekByDateString:(NSString *)dateString;

@end
