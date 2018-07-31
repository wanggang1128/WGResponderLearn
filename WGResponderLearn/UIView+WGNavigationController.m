//
//  UIView+WGNavigationController.m
//  WGResponderLearn
//
//  Created by wanggang on 2018/7/31.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import "UIView+WGNavigationController.h"

@implementation UIView (WGNavigationController)

//- (UINavigationController *)wgNavigationController{
//    for (UIView *next = [self superview]; next; next = next.superview) {
//        UIResponder *nextResponder = [next nextResponder];
//        if ([nextResponder isKindOfClass:[UINavigationController class]]) {
//            return (UINavigationController*)nextResponder;
//        }
//    }
//    return nil;
//}

- (UINavigationController *)wgNavigationController{
    UIResponder *responder = self.nextResponder;
    while (responder) {
        if ([responder isKindOfClass:[UINavigationController class]]) {
            return (UINavigationController*)responder;
        }
        responder = responder.nextResponder;
    }
    return nil;
}

@end
