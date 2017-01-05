//
//  BSQuicklyLoginBut.m
//  百思不得姐😝😝😝
//
//  Created by 赵凯强 on 2017/1/5.
//  Copyright © 2017年 赵凯强. All rights reserved.
//

#import "BSQuicklyLoginBut.h"

@implementation BSQuicklyLoginBut

- (void)awakeFromNib
{
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    [super awakeFromNib];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.imageView.xb_y = 0;
    self.imageView.xb_centerX = self.xb_width * 0.5;
    
    self.titleLabel.xb_x = 0;
    self.titleLabel.xb_y = self.imageView.xb_bottom;
    self.titleLabel.xb_height = self.xb_height - self.titleLabel.xb_y;
    self.titleLabel.xb_width = self.xb_width;
    
}


@end
