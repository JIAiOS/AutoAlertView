//
//  UIView+MRExtension.m
//  MRExtension
//
//  Created by SinObjectC on 16/5/23.
//  Copyright © 2016年 SinObjectC. All rights reserved.
//

#import "UIView+MRExtension.h"

@implementation UIView (MRExtension)

- (void)setMr_x:(CGFloat)mr_x {
    
    CGRect frame = self.frame;
    
    frame.origin.x = mr_x;
    
    self.frame = frame;
}

- (CGFloat)mr_x {
    
    return self.frame.origin.x;
}


- (void)setMr_y:(CGFloat)mr_y {
    
    CGRect frame = self.frame;
    
    frame.origin.y = mr_y;
    
    self.frame = frame;
}

- (CGFloat)mr_y {
    
    return self.frame.origin.y;
}


- (void)setMr_centerX:(CGFloat)mr_centerX {
    
    CGPoint center = self.center;
    
    center.x = mr_centerX;
    
    self.center = center;
}

- (CGFloat)mr_centerX {
    
    return self.center.x;
}

- (void)setMr_right:(CGFloat)mr_right {
    CGRect frame = self.frame;
    frame.origin.x = mr_right - frame.size.width;
    self.frame = frame;
}
- (CGFloat)mr_right {
    return self.frame.origin.x + self.frame.size.width;
}
- (CGFloat)mr_left {
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)mr_top {
    return self.frame.origin.y;
}

- (void)setMr_top:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)mr_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setMr_bottom:(CGFloat)mr_bottom {
    CGRect frame = self.frame;
    frame.origin.y = mr_bottom - frame.size.height;
    self.frame = frame;
}

- (void)setMr_centerY:(CGFloat)mr_centerY {
    
    CGPoint center = self.center;
    
    center.y = mr_centerY;
    
    self.center = center;
}

- (CGFloat)mr_centerY {
    
    return self.center.y;
}


- (void)setMr_origin:(CGPoint)mr_origin {
    
    CGRect frame = self.frame;
    
    frame.origin = mr_origin;
    
    self.frame = frame;
}

- (CGPoint)mr_origin {
    
    return self.frame.origin;
}


- (void)setMr_size:(CGSize)mr_size {
    
    CGRect frame = self.frame;
    
    frame.size = mr_size;
    
    self.frame = frame;
}

- (CGSize)mr_size {
    
    return self.frame.size;
}


- (void)setMr_width:(CGFloat)mr_width {
    
    CGRect frame = self.frame;
    
    frame.size.width = mr_width;
    
    self.frame = frame;
}

- (CGFloat)mr_width {
    
    return self.frame.size.width;
}


- (void)setMr_height:(CGFloat)mr_height {
    
    CGRect frame = self.frame;
    
    frame.size.height = mr_height;
    
    self.frame = frame;
}

- (CGFloat)mr_height {
    
    return self.frame.size.height;
}

@end
