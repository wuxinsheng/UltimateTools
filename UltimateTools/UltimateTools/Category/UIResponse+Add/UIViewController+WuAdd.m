//
//  UIViewController+WuAdd.m
//  UltimateTools
//
//  Created by xinsheng wu on 2018/2/12.
//  Copyright © 2018年 xinsheng wu. All rights reserved.
//

#import "UIViewController+WuAdd.h"
#import "WuLogger.h"

@implementation UIViewController (WuAdd)

- (UIViewController *)currentViewController {
    @try {
        UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
        if (rootViewController != nil) {
            UIViewController *currentVC = [self getCurrentVCFrom:rootViewController];
            return currentVC;
        }
    } @catch (NSException *exception) {
        WuLog(@"%@ error: %@", self, exception);
    }
    return nil;
}

- (UIViewController *)getCurrentVCFrom:(UIViewController *)rootVC {
    @try {
        UIViewController *currentVC;
        if ([rootVC presentedViewController]) {
            // 视图是被presented出来的
            rootVC = [rootVC presentedViewController];
        }
        
        if ([rootVC isKindOfClass:[UITabBarController class]]) {
            // 根视图为UITabBarController
            currentVC = [self getCurrentVCFrom:[(UITabBarController *)rootVC selectedViewController]];
        } else if ([rootVC isKindOfClass:[UINavigationController class]]){
            // 根视图为UINavigationController
            currentVC = [self getCurrentVCFrom:[(UINavigationController *)rootVC visibleViewController]];
        } else {
            // 根视图为非导航类
            currentVC = rootVC;
        }
        
        return currentVC;
    } @catch (NSException *exception) {
        WuLog(@"%@ error: %@", self, exception);
    }
}

@end
