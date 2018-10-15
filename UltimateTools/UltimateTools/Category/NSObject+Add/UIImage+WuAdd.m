//
//  UIImage+WuAdd.m
//  UltimateTools
//
//  Created by xinsheng wu on 2018/2/12.
//  Copyright © 2018年 xinsheng wu. All rights reserved.
//

#import "UIImage+WuAdd.h"
#import "UIImage+YYAdd.h"

@implementation UIImage (WuAdd)

- (UIImage *)compressImageToSize:(NSUInteger)size {
    
    long originalImageLength = [UIImageJPEGRepresentation(self, 1) length];
    NSLog(@"原始图片Size:%@", NSStringFromCGSize(self.size));
    NSLog(@"原始图片大小为:%luKB", (originalImageLength / 1024));
    UIImage *scaledImage = [self imageByResizeToSize:CGSizeMake(self.size.width * 0.4, self.size.height * 0.4)];
    
    CGFloat compression = 0.9f;
    CGFloat maxCompression = 0.1f;
    NSUInteger maxFileSize = size * 1024;      // 单张图片200kb限制
    
    NSData *imageData = UIImageJPEGRepresentation(scaledImage, compression);
    while ([imageData length] > maxFileSize && compression > maxCompression) {
        compression -= 0.1;
        imageData = UIImageJPEGRepresentation(scaledImage, compression);
    }
    NSLog(@"压缩后的大小为:%luKB", (imageData.length / 1024));
    return [UIImage imageWithData:imageData];
}

@end
