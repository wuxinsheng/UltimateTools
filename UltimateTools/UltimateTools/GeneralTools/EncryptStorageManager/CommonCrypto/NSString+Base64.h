//
//  NSString+Base64.h
//  Gurpartap Singh
//
//  Created by xinsheng wu on 2018/2/12.
//  Copyright © 2018年 xinsheng wu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Base64Additions)

+ (NSString *)base64StringFromData:(NSData *)data length:(NSUInteger)length;

@end
