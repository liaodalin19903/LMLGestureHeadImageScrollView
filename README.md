# LMLGestureHeadImageScrollView
a scroll imageview to drag or double click to show detail info.  对图像可拖拽，双击，放大缩小图片
<br>QQ交流群：566966977   不懂可以在群里讨论

##效果展示图

![img](https://github.com/liaodalin19903/LMLGestureHeadImageScrollView/blob/master/LMLGestureHeadImageScrollView.gif)

##使用方法：

*注意：本控件是基于SDWebImage的，请使用cocoapods提前导入SDWebImage（当然如果有了SDWebImage,请不要重复导入,否则会报错）

<ul>

<li>
代码使用：<br>
1.拷贝LMLGestureHeadImageScrollView文件夹到自己项目工程<br>
2.使用方式请参考demo或者看下面代码<br><br>
    
        LMLGestureHeadImageScrollView *imageScroll;
        UIImage *headImage = [UIImage imageNamed:@"01.jpg"];
        imageScroll = [[LMLGestureHeadImageScrollView alloc] initWithFrame:CGRectMake(0, 0, kScreen_Width, kScreen_Height - 64) andHeadImage:headImage];
        [self.view addSubview:imageScroll];

</li>
<li>
cocoapods使用：还未完善
</li>
</ul>
