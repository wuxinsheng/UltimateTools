//
//  NSString+MD5.h
//  Animations
//
//  Created by xinsheng wu on 2018/2/12.
//  Copyright © 2018年 xinsheng wu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MD5)

/**
 *  Get lower MD5 string.
 *
 *  @return Lower MD5 string.
 */
- (NSString *)lowerMD532BitString;

/**
 *  Get upper MD5 string.
 *
 *  @return Upper MD5 string.
 */
- (NSString *)upperMD532BitString;

@end
