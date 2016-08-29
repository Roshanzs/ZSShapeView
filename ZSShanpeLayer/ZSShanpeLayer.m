//
//  ZSShanpeLayer.m
//  ZSShanpeLayer
//
//  Created by Tony on 16/8/29.
//  Copyright © 2016年 Tony. All rights reserved.
//

#import "ZSShanpeLayer.h"

@interface ZSShanpeLayer()

@property(nonatomic,strong)CAShapeLayer *shapelayer;
@property(nonatomic,strong)UIBezierPath *shapepath;
@property(nonatomic,strong)CAShapeLayer *progresslayer;
@property(nonatomic,strong)UIBezierPath *progresspath;

@end
@implementation ZSShanpeLayer

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _shapelayer = [CAShapeLayer new];
        _shapelayer.fillColor = nil;
        _shapelayer.frame = self.bounds;
        [self.layer addSublayer:_shapelayer];
        
        _progresslayer = [CAShapeLayer new];
        _progresslayer.lineCap = kCALineCapRound;
        _progresslayer.fillColor = nil;
        [self.layer addSublayer:_progresslayer];
        
        //默认线宽5
        self.progresswidth = 5;
    }
    return self;
}


-(void)setProgresswidth:(float)progresswidth{
    _progresswidth = progresswidth;
    self.progresslayer.lineWidth = progresswidth;
    self.shapelayer.lineWidth = progresswidth;
    
    [self createShanpe];
    [self createProgress];
}

-(void)createShanpe{
//    _shapepath = [UIBezierPath bezierPathWithArcCenter:self.center radius:(self.bounds.size.width - _progresswidth) * 0.5 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    _shapepath = [UIBezierPath bezierPathWithOvalInRect:self.bounds];
    _shapelayer.strokeStart = 0.0f;
    _shapelayer.strokeEnd = 1.0f;
    _shapelayer.path = _shapepath.CGPath;
}

-(void)createProgress{
//    _progresspath = [UIBezierPath bezierPathWithArcCenter:self.center radius:(self.bounds.size.width - _progresswidth) * 0.5 startAngle:- M_PI_2 endAngle:(M_PI * 2) * _progress - M_PI_2 clockwise:YES];
    _progresspath = [UIBezierPath bezierPathWithOvalInRect:self.bounds];
    _progresslayer.strokeStart = 0.0f;
    _progresslayer.strokeEnd = _progress;
    _progresslayer.path = _progresspath.CGPath;
    self.transform = CGAffineTransformRotate(self.transform, M_PI_2);
    
}

-(void)setShapecolor:(UIColor *)shapecolor{
    _shapecolor = shapecolor;
    _shapelayer.strokeColor = shapecolor.CGColor;
}

-(void)setProgresscolor:(UIColor *)progresscolor{
    _progresscolor = progresscolor;
    _progresslayer.strokeColor = progresscolor.CGColor;
}

-(void)setProgress:(float)progress{
    _progress = progress;
    [self createProgress];
}

-(void)setAnimation:(BOOL)animation{
    _animation = animation;
    CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    anim.duration = 2.0f;
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.fromValue = [NSNumber numberWithFloat:0.0f];
    anim.toValue = [NSNumber numberWithFloat:_progress];
    anim.fillMode = kCAFillModeForwards;
    anim.removedOnCompletion = NO;
    [_progresslayer addAnimation:anim forKey:@"strokeEndAnimation"];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
