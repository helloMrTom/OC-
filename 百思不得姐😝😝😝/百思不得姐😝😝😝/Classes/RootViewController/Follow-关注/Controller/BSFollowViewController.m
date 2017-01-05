//
//  BSFollowViewController.m
//  百思不得姐😝😝😝
//
//  Created by 赵凯强 on 2017/1/4.
//  Copyright © 2017年 赵凯强. All rights reserved.
//

#import "BSFollowViewController.h"
#import "BSLoginAndRegisterViewController.h"
@interface BSFollowViewController ()

@end

@implementation BSFollowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ZKQRandomColor;


    // 标题(不建议使用self.title属性)
    self.navigationItem.title = @"我的关注";
    // 左边
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(followClick)];

}

- (IBAction)loginGisterButClick:(id)sender {
    
    BSLoginAndRegisterViewController *loginRegisterVC = [[BSLoginAndRegisterViewController alloc]init];
    [self presentViewController:loginRegisterVC animated:YES completion:nil];
}


-(void)followClick{
    
    
    
}
@end
