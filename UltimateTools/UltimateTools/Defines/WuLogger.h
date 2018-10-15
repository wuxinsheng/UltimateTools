//
//  WuLogger.h
//  UltimateTools
//
//  Created by xinsheng wu on 2018/2/12.
//  Copyright © 2018年 xinsheng wu. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifndef WuLogger_h
#define WuLogger_h

#ifdef DEBUG
#define WuLog(s, ...) NSLog(@"<%p %@:(%d) %s> %@", self, [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, __FUNCTION__,[NSString stringWithFormat:(s), ##__VA_ARGS__])
#else
#define WuLog(s, ...)
#endif

#endif /* WuLogger_h */
