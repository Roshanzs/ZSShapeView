//
//  ZSShanpeLayer.h
//  ZSShanpeLayer
//
//  Created by Tony on 16/8/29.
//  Copyright © 2016年 Tony. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ZSShanpeLayer : UIView

//背景圆环颜色
@property(nonatomic,strong)UIColor *shapecolor;
//进度圆环颜色
@property(nonatomic,strong)UIColor *progresscolor;
//进度
@property(nonatomic,assign)float progress;
//圆环宽
@property(nonatomic,assign)float progresswidth;
//是否动画
@property(nonatomic,assign)BOOL animation;
//圆环中的字
@property(nonatomic,strong)NSString *text;
//字的大小
@property(nonatomic,assign)CGFloat textFont;

@end
