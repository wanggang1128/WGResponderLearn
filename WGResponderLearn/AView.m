//
//  AView.m
//  WGResponderLearn
//
//  Created by wanggang on 2018/7/28.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import "AView.h"

@implementation AView

//-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
//    UIView *view = [super hitTest:point withEvent:event];
//    if (view == self) {
//        NSLog(@"AView上最合适view是%@",@"AView");
//        return self;
//    }else if(view == self.subviews[0]){
//        NSLog(@"AView上最合适view是%@",@"BView");
//        return view;
//    }else{
//        NSLog(@"在AView上没有最合适的view");
//        return nil;
//    }
//
//}

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    if (self.userInteractionEnabled == NO || self.alpha <= 0.01 || self.hidden == YES) {
        NSLog(@"在AView上self.userInteractionEnabled == NO || self.alpha <= 0.01 || self.hidden == YES导致它和其子视图没有最合适的view");
        return nil;
    }
    if (![self pointInside:point withEvent:event]) {
        NSLog(@"触摸事件不在AView上");
        return nil;
    }
    NSInteger count = self.subviews.count;
    for (NSInteger i = count-1; i>=0; i--) {
        UIView *subView = self.subviews[i];
        CGPoint subPoint = [self convertPoint:point toView:subView];
        UIView *suitView = [subView hitTest:subPoint withEvent:event];
        if (suitView) {
            NSLog(@"AView上最合适view是%@",@"BView");
            return suitView;
        }
    }
    NSLog(@"AView上最合适view是%@",@"AView");
    return self;
}

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    NSLog(@"AView响应了");
//}

@end
