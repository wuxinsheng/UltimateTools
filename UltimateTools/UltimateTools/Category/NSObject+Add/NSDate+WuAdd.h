//
//  NSDate+WuAdd.h
//  UltimateTools
//
//  Created by xinsheng wu on 2018/2/13.
//  Copyright © 2018年 xinsheng wu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (WuAdd)

/**
 *  Use DateFormatter to transform dateString to specified date string.
 *
 *  @param dateString                Date string. (eg. 2015-06-26 08:08:08)
 *  @param inputDateStringFormatter  Input date string formatter. (eg. yyyy-MM-dd HH:mm:ss)
 *  @param outputDateStringFormatter Output date string formatter. (eg. yy/MM/dd)
 *
 *  @return Specified date string.
 */
+ (NSString *)dateFormatterWithInputDateString:(NSString *)dateString
                      inputDateStringFormatter:(NSString *)inputDateStringFormatter
                     outputDateStringFormatter:(NSString *)outputDateStringFormatter;

/**
 *  Use DateFormatter to transform dateString to NSDate.
 *
 *  @param dateString               Date string. (eg. 2015-06-26 08:08:08)
 *  @param inputDateStringFormatter Input date string formatter. (eg. yyyy-MM-dd HH:mm:ss)
 *
 *  @return NSDate object.
 */
+ (NSDate *)dateFormatterWithInputDateString:(NSString *)dateString
                    inputDateStringFormatter:(NSString *)inputDateStringFormatter;

/**
 *  Use DateFormatter to transform date to specified date string.
 *
 *  @param date                      NSDate object.
 *  @param outputDateStringFormatter Output date string formatter. (eg. yy/MM/dd)
 *
 *  @return Specified date string.
 */
+ (NSString *)dateStringFromDate:(NSDate *)date
       outputDateStringFormatter:(NSString *)outputDateStringFormatter;

@end
