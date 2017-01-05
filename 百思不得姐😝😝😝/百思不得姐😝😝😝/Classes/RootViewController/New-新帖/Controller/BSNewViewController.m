//
//  BSNewViewController.m
//  百思不得姐😝😝😝
//
//  Created by 赵凯强 on 2017/1/4.
//  Copyright © 2017年 赵凯强. All rights reserved.
//

#import "BSNewViewController.h"

@interface BSNewViewController ()

@end

@implementation BSNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = ZKQRandomColor;

    // 标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    // 左边
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];
    
}

-(void)tagClick{
    
    
    
}

@end
