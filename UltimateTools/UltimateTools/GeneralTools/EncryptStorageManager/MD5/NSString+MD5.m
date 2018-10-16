//
//  NSString+MD5.m
//  Animations
//
//  Created by xinsheng wu on 2018/2/12.
//  Copyright © 2018年 xinsheng wu. All rights reserved.
//

#import "NSString+MD5.h"
#import "MD5.h"

@implementation NSString (MD5)

- (NSString *)lowerMD532BitString {

    return [MD5 md532BitLower:self];
}

- (NSString *)upperMD532BitString {

    return [MD5 md532BitUpper:self];
}

@end
