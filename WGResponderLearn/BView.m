//
//  BView.m
//  WGResponderLearn
//
//  Created by wanggang on 2018/7/28.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import "BView.h"
#import "UIView+WGNavigationController.h"
#import "FirstViewController.h"

@implementation BView

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    UIView *view = [super hitTest:point withEvent:event];
    if (view) {
        if (view == self) {
            NSLog(@"BView上最合适view是%@",@"BView");
            return self;
        }else if(view == self.subviews[0]){
            NSLog(@"BView上最合适view是%@",@"CView");
            return view;
        }else{
            NSLog(@"BView上没有最合适的view");
            return nil;
        }
    }else{
        NSLog(@"触摸事件没在BView上");
        return nil;
    }
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UINavigationController *nav = [self wgNavigationController];
    FirstViewController *fc = [[FirstViewController alloc] init];
    [nav pushViewController:fc animated:YES];
    NSLog(@"BView响应了");
}

@end
