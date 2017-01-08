//
//  BSLoginAngRegisterTextField.m
//  百思不得姐😝😝😝
//
//  Created by 赵凯强 on 2017/1/6.
//  Copyright © 2017年 赵凯强. All rights reserved.
//

#import "BSLoginAngRegisterTextField.h"
#import <objc/runtime.h>

static NSString * const ZXBPlaceholderColorKey = @"placeholderLabel.textColor";

@implementation BSLoginAngRegisterTextField

- (void)awakeFromNib
{
    // 设置光标颜色
    self.tintColor = [UIColor whiteColor];
    // 设置默认的占位文字颜色
    [self setValue:[UIColor grayColor] forKeyPath:ZXBPlaceholderColorKey];
    
    [super awakeFromNib];
}
@end
