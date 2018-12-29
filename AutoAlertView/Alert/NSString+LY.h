//
//  NSString+LY.h
//  LeYuan
//
//  Created by Apple on 16/1/14.
//  Copyright © 2016年 ShanDongSanMi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (LY)

- (CGSize)fontSizeWithFontSize:(NSInteger)fontsize withWidth:(CGFloat)width;

//货币的乘法计算
+ (NSString *)decimalNumberMutiplyWithString:(NSString *)multiplierValue andSecondVale:(NSString *)multiplicandValue;

//货币的加法计算
+ (NSString *)decimalNumAddWithString:(NSString *)firstAdd andSecondAdd:(NSString *)secondAdd;
@end
