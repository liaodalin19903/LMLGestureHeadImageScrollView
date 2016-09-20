//
//  LMLGestureHeadImageScrollView.m
//  agriculturalApp
//
//  Created by 优谱德 on 16/7/11.
//  Copyright © 2016年 youpude. All rights reserved.
//

#import "LMLGestureHeadImageScrollView.h"
#import "UIImageView+WebCache.h"

#define img_placeholder_square_header [UIImage imageNamed:@"head_placeholder_square.png"]

@interface LMLGestureHeadImageScrollView () <UIScrollViewDelegate>

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation LMLGestureHeadImageScrollView

- (instancetype)initWithFrame:(CGRect)frame andHeadImage:(UIImage *)image {

    if (self = [super initWithFrame:frame]) {
        self.image = image;
        
        [self initUIWithImgUrl:nil];
        
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame andHeadImageUrlStr:(NSString *)imageStr {

    if (self = [super initWithFrame:frame]) {
        
        //[self.imageView sd_setImageWithURL:[NSURL URLWithString:imageStr] placeholderImage:img_placeholder_squre];
        
        [self initUIWithImgUrl:imageStr];
        
    }
    
    return self;
}

#pragma mark - init 

- (void)initUIWithImgUrl:(NSString *)imgUrl {
    
    _imageView = [[UIImageView alloc]initWithFrame:self.frame];
    if (imgUrl == nil) {
        _imageView.image = self.image;
    }else {
    
        [_imageView sd_setImageWithURL:[NSURL URLWithString:imgUrl] placeholderImage:img_placeholder_square_header];
    }
   
    
    _imageView.contentMode = UIViewContentModeScaleAspectFit;
    //_imageView.clipsToBounds = YES;
    
    [self addSubview:_imageView];
    
    //设置内容大小
    self.contentSize = _imageView.frame.size;
    //设置代理为控制器
    self.delegate = self;
    //设置最小缩放比例
    self.minimumZoomScale = 1;
    //设置最大缩放比例
    self.maximumZoomScale = 2;
    UITapGestureRecognizer *tapGesture=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleTapGesture:)];
    //设置手势点击数,双击：点2下
    tapGesture.numberOfTapsRequired=2;
    //    self.imageView.userInteractionEnabled = YES;
    [self addGestureRecognizer:tapGesture];

}

#pragma mark - private methods

//放大缩小
-(void)handleTapGesture:(UIGestureRecognizer*)sender
{
    if(self.zoomScale > 1.0){
        [self setZoomScale:1.0 animated:YES];
    }else{
        [self setZoomScale:2.0 animated:YES];
    }
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    
    return _imageView;
}

#pragma mark - setter

- (void)setHeadImage:(UIImage *)image {
    
    _image = image;
    _imageView.image = _image;
    
}

@end
