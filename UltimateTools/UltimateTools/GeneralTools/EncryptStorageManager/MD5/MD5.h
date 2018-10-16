//
//  MD5.h
//  Animations
//
//  Created by xinsheng wu on 2018/2/12.
//  Copyright © 2018年 xinsheng wu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MD5 : NSObject

/**
 *  Transform normal string to MD5's 32 bit lower string.
 *
 *  @param string Normal string.
 *
 *  @return MD5's 32 bit lower string.
 */
+ (NSString*)md532BitLower:(NSString *)string;

/**
 *  Transform normal string to MD5's 32 bit lower string.
 *
 *  @param string Normal string.
 *
 *  @return MD5's 32 bit upper string.
 */
+ (NSString*)md532BitUpper:(NSString*)string;

@end
