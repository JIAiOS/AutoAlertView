//
//  ViewController.m
//  AutoAlertView
//
//  Created by 贾倍 on 2018/12/29.
//  Copyright © 2018 贾倍. All rights reserved.
//

#import "ViewController.h"
#import "AutoAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 44);
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"点击测试" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)btnClick{
    [AutoAlertView ShowMessage:@"测试信息1"];
//    [AutoAlertView ShowMessage:@"测试信息2" :5];
//    [AutoAlertView ShowAlert:@"提示" message:@"测试信息3"];
}


@end
