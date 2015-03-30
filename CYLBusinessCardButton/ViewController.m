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
@property (nonatomic, strong) CYLQuestionDetailDoctorButton *btn;
@end

@implementation ViewController

- (CYLQuestionDetailDoctorButton *)btn
{
    if (_btn == nil) {
        _btn = [[CYLQuestionDetailDoctorButton alloc] init];
        NSArray *dataSource =
        @[@"李时珍",@"副主任医师",@"北京故宫博物院附属医院"];
        self.view.backgroundColor = [UIColor whiteColor];
        CGRect frame = CGRectMake(5,10,320,100);
        _btn = [CYLQuestionDetailDoctorButton doctorButtonWithFrame:frame
                   andData:(NSMutableArray *)dataSource];
        _btn.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
        //    btn.layer.borderWidth = 1.0;
        //    btn.layer.borderColor = [UIColor blackColor].CGColor;
        [_btn setImage:[UIImage imageNamed:@"DefaultProfileHead_qq"] forState:UIControlStateNormal];
    }
    return _btn;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.btn];
}

@end
