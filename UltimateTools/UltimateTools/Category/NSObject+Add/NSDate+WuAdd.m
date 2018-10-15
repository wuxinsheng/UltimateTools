//
//  NSDate+WuAdd.m
//  UltimateTools
//
//  Created by xinsheng wu on 2018/2/13.
//  Copyright © 2018年 xinsheng wu. All rights reserved.
//

#import "NSDate+WuAdd.h"

@implementation NSDate (WuAdd)

+ (NSString *)dateFormatterWithInputDateString:(NSString *)dateString
                      inputDateStringFormatter:(NSString *)inputDateStringFormatter
                     outputDateStringFormatter:(NSString *)outputDateStringFormatter {
    
    NSParameterAssert(dateString);
    NSParameterAssert(inputDateStringFormatter);
    NSParameterAssert(outputDateStringFormatter);
    
    NSString *outputString = nil;
    
    NSDateFormatter *inputFormatter  = [[NSDateFormatter alloc] init] ;
    inputFormatter.dateFormat        = inputDateStringFormatter;
    
    NSDate *date = [inputFormatter dateFromString:dateString];
    
    if (date) {
        
        NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
        outputFormatter.dateFormat       = outputDateStringFormatter;
        outputString                     = [outputFormatter stringFromDate:date];
    }
    
    return outputString;
}

+ (NSDate *)dateFormatterWithInputDateString:(NSString *)dateString
                    inputDateStringFormatter:(NSString *)inputDateStringFormatter {
    
    NSParameterAssert(dateString);
    NSParameterAssert(inputDateStringFormatter);
    
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init] ;
    inputFormatter.dateFormat       = inputDateStringFormatter;
    NSDate *date = [inputFormatter dateFromString:dateString];
    
    return date;
}

+ (NSString *)dateStringFromDate:(NSDate *)date
       outputDateStringFormatter:(NSString *)outputDateStringFormatter {
    
    NSParameterAssert(date);
    NSParameterAssert(outputDateStringFormatter);
    
    NSDateFormatter *outputFormatter  = [[NSDateFormatter alloc] init] ;
    outputFormatter.dateFormat        = outputDateStringFormatter;
    
    return [outputFormatter stringFromDate:date];
}

@end
