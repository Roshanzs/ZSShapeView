//
//  ViewController.m
//  ZSShanpeLayer
//
//  Created by Tony on 16/8/29.
//  Copyright © 2016年 Tony. All rights reserved.
//

#import "ViewController.h"
#import "ZSShanpeLayer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ZSShanpeLayer *shape = [[ZSShanpeLayer alloc]initWithFrame:CGRectMake(20, 50, 100, 100)];
    shape.shapecolor = [UIColor blackColor];
    shape.progresscolor = [UIColor yellowColor];
    shape.progresswidth = 4;
    shape.progress = 0.8;
    shape.animation = YES;
    shape.text = @"力量";
    shape.textFont = 22;
    [self.view addSubview:shape];
    
    ZSShanpeLayer *shape2 = [[ZSShanpeLayer alloc]initWithFrame:CGRectMake(20, 170, 100, 100)];
    shape2.shapecolor = [UIColor blackColor];
    shape2.progresscolor = [UIColor redColor];
    shape2.progresswidth = 10;
    shape2.progress = 0.7;
    shape2.animation = YES;
    [self.view addSubview:shape2];
    
    ZSShanpeLayer *shape3 = [[ZSShanpeLayer alloc]initWithFrame:CGRectMake(170, 50, 100, 100)];
    shape3.shapecolor = [UIColor blackColor];
    shape3.progresscolor = [UIColor greenColor];
    shape3.progresswidth = 10;
    shape3.progress = 0.2;
    shape3.animation = YES;
    [self.view addSubview:shape3];
    
    ZSShanpeLayer *shape4 = [[ZSShanpeLayer alloc]initWithFrame:CGRectMake(170, 170, 100, 100)];
    shape4.shapecolor = [UIColor blackColor];
    shape4.progresscolor = [UIColor blueColor];
    shape4.progresswidth = 10;
    shape4.progress = 0.4;
    shape4.animation = YES;
    [self.view addSubview:shape4];
    
    ZSShanpeLayer *shape5 = [[ZSShanpeLayer alloc]initWithFrame:CGRectMake(0, 0, 80, 80)];
    shape5.center = shape4.center;
    shape5.shapecolor = [UIColor blackColor];
    shape5.progresscolor = [UIColor yellowColor];
    shape5.progresswidth = 10;
    shape5.progress = 0.46;
    shape5.animation = YES;
    [self.view addSubview:shape5];
    
    ZSShanpeLayer *shape6 = [[ZSShanpeLayer alloc]initWithFrame:CGRectMake(0, 0, 60, 60)];
    shape6.center = shape4.center;
    shape6.shapecolor = [UIColor blackColor];
    shape6.progresscolor = [UIColor brownColor];
    shape6.progresswidth = 10;
    shape6.progress = 0.6;
    shape6.animation = YES;
    [self.view addSubview:shape6];

    ZSShanpeLayer *shape7 = [[ZSShanpeLayer alloc]initWithFrame:CGRectMake(0, 0, 40, 40)];
    shape7.center = shape4.center;
    shape7.shapecolor = [UIColor blackColor];
    shape7.progresscolor = [UIColor brownColor];
    shape7.progresswidth = 10;
    shape7.progress = 0.64;
    shape7.animation = YES;
    [self.view addSubview:shape7];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
