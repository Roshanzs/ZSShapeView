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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
