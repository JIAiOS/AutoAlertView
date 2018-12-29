//
//  AutoAlertView.m
//  ManziDigest
//
//  Created by Hepburn Alex on 12-10-15.
//  Copyright (c) 2012年 Hepburn Alex. All rights reserved.
//

#import "AutoAlertView.h"
#import "NSString+LY.h"
#import <QuartzCore/QuartzCore.h>
#import "UIView+MRExtension.h"

#define LY_MAIN_FONT  [UIFont fontWithName:@"Helvetica Neue" size:14]
//获取屏幕宽高
#define kMainScreen_width  [[UIScreen mainScreen] bounds].size.width
#define kMainScreen_height [[UIScreen mainScreen] bounds].size.height

@implementation AutoAlertView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;

        _mBackView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 160, 160)];
        _mBackView.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.7];
        _mBackView.layer.cornerRadius = 10;
        _mBackView.layer.masksToBounds = YES;
        _mBackView.autoresizingMask = UIViewAutoresizingNone;
        _mBackView.center = CGPointMake(frame.size.width/2, frame.size.height/2);
        [self addSubview:_mBackView];

        _mlbMsgLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, 140, 80)];
        _mlbMsgLabel.backgroundColor = [UIColor clearColor];
        _mlbMsgLabel.font = LY_MAIN_FONT;
        _mlbMsgLabel.textAlignment = NSTextAlignmentCenter;
        _mlbMsgLabel.textColor = [UIColor whiteColor];
        _mlbMsgLabel.numberOfLines = 0;
        [_mBackView addSubview:_mlbMsgLabel];
    }
    return self;
}

- (void)DidAnimateHideEnd {
    [self removeFromSuperview];
}

- (void)setMlbMsg:(NSString *)mlbMsg
{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    _mlbMsg = mlbMsg;
    CGSize size = [mlbMsg fontSizeWithFontSize:16 withWidth:(kMainScreen_width-20)];
    _mBackView.mr_height = size.height+30;
    
    _mBackView.mr_width  = size.width+20;
    _mBackView.center = window.center;
    _mlbMsgLabel.text = mlbMsg;
    _mlbMsgLabel.frame = CGRectMake(10, 15, size.width, size.height);
    
}
- (void)AnimateHide {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationDelay:1.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(DidAnimateHideEnd)];
    self.alpha = 0.0;
    [UIView commitAnimations];
}

+ (void)ShowMessage:(NSString *)message {
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    AutoAlertView *alertView = [[AutoAlertView alloc] initWithFrame:window.bounds];
    [window addSubview:alertView];
    alertView.mlbMsg = message;
    [alertView AnimateHide];
}

+ (void)ShowMessage:(NSString *)message :(int)iTop {
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    AutoAlertView *alertView = [[AutoAlertView alloc] initWithFrame:window.bounds];
    [window addSubview:alertView];
    CGRect rect = alertView.mBackView.frame;
    rect.origin.y = iTop;
    alertView.mBackView.frame = rect;
    alertView.mlbMsgLabel.text = message;
    [alertView AnimateHide];
}

+ (void)ShowAlert:(NSString *)title message:(NSString *)message {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alertController addAction:okAction];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertController animated:YES completion:nil];
}


@end
