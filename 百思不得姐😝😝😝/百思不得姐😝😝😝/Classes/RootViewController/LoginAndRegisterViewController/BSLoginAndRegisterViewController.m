//
//  BSLoginAndRegisterViewController.m
//  百思不得姐😝😝😝
//
//  Created by 赵凯强 on 2017/1/5.
//  Copyright © 2017年 赵凯强. All rights reserved.
//

#import "BSLoginAndRegisterViewController.h"


@interface BSLoginAndRegisterViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftMargin;

@end

@implementation BSLoginAndRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
}

// 设置状态栏亮色(白色)
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

// 关闭页面
- (IBAction)closeView:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

/**
 *  显示登录\注册界面
 */

// 注册账号®️
- (IBAction)registerAccountNumber:(UIButton *)button {
    // 退出键盘
    [self.view endEditing:YES];
    
    // 设置约束 和 按钮状态
    // 目前显示的是注册界面, 点击按钮后要切换为登录界面
    if (self.leftMargin.constant) {
        
        self.leftMargin.constant = 0;
        button.selected = NO;
    }


    
    // 目前显示的是登录界面, 点击按钮后要切换为注册界面
    else {
        self.leftMargin.constant = - self.view.xb_width;
        button.selected = YES;
    }
    
    // 动画
    [UIView animateWithDuration:0.25 animations:^{
        // 强制刷新 : 让最新设置的约束值马上应用到UI控件上
        // 会刷新到self.view内部的所有子控件
        [self.view layoutIfNeeded];
    }];

}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}



@end
