//
//  LMLGestureHeadImageScrollView.h
//  agriculturalApp
//
//  Created by 优谱德 on 16/7/11.
//  Copyright © 2016年 youpude. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LMLGestureHeadImageScrollView : UIScrollView

@property (nonatomic, strong) UIImage *image;  

- (instancetype)initWithFrame:(CGRect)frame andHeadImage:(UIImage *)image;
- (instancetype)initWithFrame:(CGRect)frame andHeadImageUrlStr:(NSString *)imageStr;

- (void)setHeadImage:(UIImage *)image;

@end
