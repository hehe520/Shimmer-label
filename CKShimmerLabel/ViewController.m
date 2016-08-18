//
//  ViewController.m
//  CKShimmerLabel
//
//  Created by caokun on 16/8/16.
//  Copyright © 2016年 caokun. All rights reserved.
//

#import "ViewController.h"
#import "CKShimmerLabel.h"

@interface ViewController ()

@property (strong, nonatomic) CKShimmerLabel *label1;
@property (strong, nonatomic) CKShimmerLabel *label2;
@property (strong, nonatomic) CKShimmerLabel *label3;
@property (strong, nonatomic) CKShimmerLabel *label4;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label1 = [[CKShimmerLabel alloc] init];
    self.label1.frame = CGRectMake(20, 35, 200, 35);
    self.label1.text = @"hello world 1";
    self.label1.textColor = [UIColor grayColor];
    self.label1.font = [UIFont systemFontOfSize:30];
    [self.label1 startShimmer];                 // 开启闪烁
    [self.view addSubview:self.label1];
    
    
    self.label2 = [[CKShimmerLabel alloc] init];
    self.label2.frame = CGRectMake(20, 105, 200, 35);
    self.label2.text = @"hello world 2";
    self.label2.textColor = [UIColor grayColor];
    self.label2.font = [UIFont systemFontOfSize:30];
    self.label2.shimmerType = ST_RightToLeft;           // 滚动方向 right to left
    self.label2.durationTime = 0.7;                     // 滚动时间
    self.label2.shimmerColor = [UIColor orangeColor];   // 高亮颜色
    [self.label2 startShimmer];                         // 开启闪烁
    [self.view addSubview:self.label2];
    
    
    self.label3 = [[CKShimmerLabel alloc] init];
    self.label3.frame = CGRectMake(20, 175, 200, 35);
    self.label3.text = @"hello world 3";
    self.label3.textColor = [UIColor grayColor];
    self.label3.font = [UIFont systemFontOfSize:30];
    self.label3.shimmerType = ST_AutoReverse;
    self.label3.shimmerWidth = 20;                      // 高亮的宽度
    self.label3.shimmerRadius = 20;                     // 阴影的宽度
    self.label3.shimmerColor = [UIColor yellowColor];   // 高亮颜色
    [self.label3 startShimmer];                         // 开启闪烁
    [self.view addSubview:self.label3];
    
    
    self.label4 = [[CKShimmerLabel alloc] init];
    self.label4.frame = CGRectMake(20, 245, 200, 35);
    self.label4.text = @"hello world 4";
    self.label4.textColor = [UIColor grayColor];
    self.label4.font = [UIFont systemFontOfSize:30];
    self.label4.shimmerType = ST_ShimmerAll;
    self.label4.durationTime = 0.5;
    self.label4.shimmerColor = [UIColor redColor];
    [self.label4 startShimmer];
    [self.view addSubview:self.label4];

//    [self.label4 stopShimmer];      // 停止闪烁
}

@end
