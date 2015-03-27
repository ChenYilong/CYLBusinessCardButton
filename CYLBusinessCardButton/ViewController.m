//
//  ViewController.m
//  CYLDifferentColorTitleButton
//
//  Created by chenyilong on 15/3/25.
//  Copyright (c) 2015年 chenyilong. All rights reserved.
//

#import "ViewController.h"
#import "CYLQuestionDetailDoctorButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *dataSource =
    @[@"李时珍",@"副主任医师",@"北京故宫博物院附属医院"];
    self.view.backgroundColor = [UIColor whiteColor];
    CGRect frame = CGRectMake(5,10,320,100);
    CYLQuestionDetailDoctorButton *btn=[CYLQuestionDetailDoctorButton doctorButtonWithFrame:frame andData:dataSource];
    btn.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
    [self.view addSubview:btn];
//    btn.layer.borderWidth = 1.0;
//    btn.layer.borderColor = [UIColor blackColor].CGColor;
    [btn setImage:[UIImage imageNamed:@"DefaultProfileHead_qq"] forState:UIControlStateNormal];
    [self.view addSubview:btn];
}
@end
