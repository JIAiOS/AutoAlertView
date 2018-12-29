//
//  NSString+LY.m
//  LeYuan
//
//  Created by Apple on 16/1/14.
//  Copyright © 2016年 ShanDongSanMi. All rights reserved.
//

#import "NSString+LY.h"
#import <UIKit/UIKit.h>
#import "UIView+MRExtension.h"

#define LY_MAIN_FONT  [UIFont fontWithName:@"Helvetica Neue" size:14]

@implementation NSString (LY)

- (CGSize)fontSizeWithFontSize:(NSInteger)fontsize withWidth:(CGFloat)width
{
    NSDictionary *attributes = @{NSFontAttributeName: LY_MAIN_FONT};
    CGRect rect = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attributes
                                     context:nil];
    return rect.size;
}


+ (NSString *)decimalNumberMutiplyWithString:(NSString *)multiplierValue andSecondVale:(NSString *)multiplicandValue
{
    NSDecimalNumber *multiplierNumber = [NSDecimalNumber decimalNumberWithString:multiplierValue];
    NSDecimalNumber *multiplicandNumber = [NSDecimalNumber decimalNumberWithString:multiplicandValue];
    NSDecimalNumber *product = [multiplicandNumber decimalNumberByMultiplyingBy:multiplierNumber];
    return [product stringValue];
}


+ (NSString *)decimalNumAddWithString:(NSString *)firstAdd andSecondAdd:(NSString *)secondAdd
{
    NSDecimalNumber *firstAdder = [NSDecimalNumber decimalNumberWithString:firstAdd];
    NSDecimalNumber *secondAdder = [NSDecimalNumber decimalNumberWithString:secondAdd];
    NSDecimalNumber *sumer = [firstAdder decimalNumberByAdding:secondAdder];
    return [sumer stringValue];
}
@end
