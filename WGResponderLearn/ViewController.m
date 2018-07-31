//
//  ViewController.m
//  WGResponderLearn
//
//  Created by wanggang on 2018/7/27.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import "ViewController.h"
#import "AView.h"
#import "BView.h"
#import "CView.h"
#import "UIView+WGNavigationController.h"

@interface ViewController ()

@property (nonatomic, strong) AView *aView;
@property (nonatomic, strong) BView *bView;
@property (nonatomic, strong) CView *cView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"ViewController";
    
    [self.view addSubview:self.aView];
    [_aView addSubview:self.bView];
}

-(AView *)aView{
    if (!_aView) {
        _aView = [[AView alloc] init];
        _aView.backgroundColor = [UIColor yellowColor];
        _aView.frame = CGRectMake(20, 100, 200, 200);
    }
    return _aView;
}

-(BView *)bView{
    if (!_bView) {
        _bView = [[BView alloc] init];
        _bView.backgroundColor = [UIColor greenColor];
        _bView.frame = CGRectMake(0, 0, 100, 100);
    }
    return _bView;
}

-(CView *)cView{
    if (!_cView) {
        _cView = [[CView alloc] init];
        _cView.backgroundColor = [UIColor redColor];
        _cView.frame = CGRectMake(0, 0, 50, 50);
    }
    return _cView;
}

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    NSLog(@"ViewController响应了");
//}












@end
