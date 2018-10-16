//
//  NSData+Base64.m
//  Gurpartap Singh
//
//  Created by xinsheng wu on 2018/2/12.
//  Copyright © 2018年 xinsheng wu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NSString;

@interface NSData (Base64Additions)

+ (NSData *)base64DataFromString:(NSString *)string;

@end
