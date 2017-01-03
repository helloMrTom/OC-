//
//  AppDelegate.h
//  百思不得姐😝😝😝
//
//  Created by 赵凯强 on 2017/1/3.
//  Copyright © 2017年 赵凯强. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

