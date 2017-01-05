//
//  BSMiddleTabBar.m
//  百思不得姐😝😝😝
//
//  Created by 赵凯强 on 2017/1/4.
//  Copyright © 2017年 赵凯强. All rights reserved.
//

#import "BSMiddleTabBar.h"

@interface BSMiddleTabBar()

@property (nonatomic ,weak) UIButton *publishButton;

@end

@implementation BSMiddleTabBar

/** 发布按钮 */
- (UIButton *)publishButton
{
    if (!_publishButton) {
        
        
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [publishButton addTarget:self action:@selector(publishClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:publishButton];
        _publishButton = publishButton;
    }
    return _publishButton;
}


#pragma mark - 初始化
/**
 *  布局子控件
 */
- (void)layoutSubviews
{
    [super layoutSubviews];
    /**** 按钮的尺寸 ****/
    CGFloat buttonW = self.xb_width / 5;
    CGFloat buttonH = self.xb_height;
    
    /**** 设置所有UITabBarButton的frame ****/
    
    CGFloat tabBarButtonY = 0;
    // 按钮索引
    int tabBarButtonIndex = 0;
    
    for (UIView *subview in self.subviews) {
        // 过滤掉非UITabBarButton
        if (subview.class != NSClassFromString(@"UITabBarButton")) continue;
        
        // 设置frame
        CGFloat tabBarButtonX = tabBarButtonIndex * buttonW;
        if (tabBarButtonIndex >= 2) { // 右边的2个UITabBarButton
            tabBarButtonX += buttonW;
        }
        subview.frame = CGRectMake(tabBarButtonX, tabBarButtonY, buttonW, buttonH);
        
        // 增加索引
        tabBarButtonIndex++;
    }
    
    /**** 设置中间的发布按钮的frame ****/
    self.publishButton.xb_width = buttonW;
    self.publishButton.xb_height = buttonH;
    self.publishButton.xb_centerX = self.xb_width * 0.5;
    self.publishButton.xb_centerY = self.xb_height * 0.5;
}

-(void)publishClick{
    
    
}

@end
