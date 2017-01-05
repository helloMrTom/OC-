//
//  UIView+BSExtension.m
//  百思不得姐😝😝😝
//
//  Created by 赵凯强 on 2017/1/4.
//  Copyright © 2017年 赵凯强. All rights reserved.
//

#import "UIView+BSExtension.h"

@implementation UIView (BSExtension)


- (CGFloat)xb_width
{
    return self.frame.size.width;
}

- (CGFloat)xb_height
{
    return self.frame.size.height;
}

- (void)setXb_width:(CGFloat)xb_width
{
    CGRect frame = self.frame;
    frame.size.width = xb_width;
    self.frame = frame;
}

- (void)setXb_height:(CGFloat)xb_height
{
    CGRect frame = self.frame;
    frame.size.height = xb_height;
    self.frame = frame;
}

- (CGFloat)xb_x
{
    return self.frame.origin.x;
}

- (void)setXb_x:(CGFloat)xb_x
{
    CGRect frame = self.frame;
    frame.origin.x = xb_x;
    self.frame = frame;
}

- (CGFloat)xb_y
{
    return self.frame.origin.y;
}

- (void)setXb_y:(CGFloat)xb_y
{
    CGRect frame = self.frame;
    frame.origin.y = xb_y;
    self.frame = frame;
}

- (CGFloat)xb_centerX
{
    return self.center.x;
}

- (void)setXb_centerX:(CGFloat)xb_centerX
{
    CGPoint center = self.center;
    center.x = xb_centerX;
    self.center = center;
}

- (CGFloat)xb_centerY
{
    return self.center.y;
}

- (void)setXb_centerY:(CGFloat)xb_centerY
{
    CGPoint center = self.center;
    center.y = xb_centerY;
    self.center = center;
}

- (CGFloat)xb_right
{
    //    return self.xmg_x + self.xmg_width;
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)xb_bottom
{
    //    return self.xmg_y + self.xmg_height;
    return CGRectGetMaxY(self.frame);
}

- (void)setXb_right:(CGFloat)xb_right
{
    self.xb_x = xb_right - self.xb_width;
}

- (void)setXb_bottom:(CGFloat)xb_bottom
{
    self.xb_y = xb_bottom - self.xb_height;
}

@end
