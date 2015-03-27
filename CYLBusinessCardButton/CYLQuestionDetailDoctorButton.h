//
//  CYLQuestionDetailDoctorButton.h
//  CYLDifferentColorTitleButton
//
//  Created by chenyilong on 15/3/25.
//  Copyright (c) 2015年 chenyilong. All rights reserved.
//
#import <UIKit/UIKit.h>

@class CYLQuestionDetailDoctorButton;
@protocol CYLQuestionDetailDoctorButtonDelegate <NSObject>

@required
-(void)questionDetailDoctorButtonClicked:(id)sender;
@end

@interface CYLQuestionDetailDoctorButton : UIButton
@property (nonatomic, strong) UILabel *professionalLabel;
@property (nonatomic, strong) UILabel *hospitalLabel;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) NSMutableArray *dataSource;
@property (nonatomic, weak) id<CYLQuestionDetailDoctorButtonDelegate> delegate;
- (id)initDoctorButtonWithFrame:(CGRect)frame andData:(NSMutableArray *)paramData;
+ (id)doctorButtonWithFrame:(CGRect)frame andData:(NSMutableArray *)paramData;
@end
