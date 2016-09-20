//
//  ViewController.m
//  LMLGestureHeadImageScrollViewDemo
//
//  Created by 优谱德 on 16/9/20.
//  Copyright © 2016年 优谱德. All rights reserved.
//

#import "ViewController.h"
#import "LMLGestureHeadImageScrollView.h"

//设备屏幕尺寸
#define kScreen_Height   ([UIScreen mainScreen].bounds.size.height)
#define kScreen_Width    ([UIScreen mainScreen].bounds.size.width)

@interface ViewController ()
{
    
    LMLGestureHeadImageScrollView *imageScroll;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
}

#pragma mark - init

- (void)initUI {
    
    UIImage *headImage = [UIImage imageNamed:@"01.jpg"];

    imageScroll = [[LMLGestureHeadImageScrollView alloc] initWithFrame:CGRectMake(0, 0, kScreen_Width, kScreen_Height - 64) andHeadImage:headImage];
    [self.view addSubview:imageScroll];
}



@end
