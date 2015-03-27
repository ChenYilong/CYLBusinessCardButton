//
//  CYLQuestionDetailDoctorButton.m
//  CYLDifferentColorTitleButton
//
//  Created by chenyilong on 15/3/25.
//  Copyright (c) 2015年 chenyilong. All rights reserved.
//  特点：ImageView和三个Label矩阵能居中，只需要调节 Font 就行。

#define kImageToNameLabelMargin 20
#define kNameLabelToProfessionalLabelMargin 20
#define kNameLabelToHospitalLabelMargin 5
#define kLabelTopEdgeInsets 5
#define kLabelHeight 20
#define kNameLabelTextFont 20
#define kProfessionalLabelTextFont kNameLabelTextFont-5
#define kHospitalLabelTextFont kProfessionalLabelTextFont

#import "CYLQuestionDetailDoctorButton.h"
#import "UILabel+Size.h"

@implementation CYLQuestionDetailDoctorButton

- (id)sharedInit {
    self.imageView.layer.borderWidth = 1.0;
    self.imageView.layer.borderColor = [UIColor colorWithRed:134/255.0 green:207/255.0 blue:159/255.0 alpha:1].CGColor;
    self.imageView.layer.masksToBounds = YES;
    self.imageView.clipsToBounds = YES;
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    self.imageEdgeInsets = UIEdgeInsetsMake(0, 20, 0, 0);
    [self setBackgroundImage:[UIImage imageNamed:@"questionDetailCell_doctor_bg"] forState:UIControlStateNormal];
    [self addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    return self;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    UIImage *image = [self imageForState:UIControlStateNormal];
    return CGRectMake((contentRect.size.height - image.size.height)/2, (contentRect.size.height - image.size.height)/2, image.size.width, image.size.height);
}

/**
 *  目的是去掉父类在高亮时所做的操作
 */
//- (void)setHighlighted:(BOOL)highlighted {}

- (id)initDoctorButtonWithFrame:(CGRect)frame andData:(NSMutableArray *)paramData{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self sharedInit];
        self.nameLabel = [[UILabel alloc] init];
        self.professionalLabel = [[UILabel alloc] init];
        self.hospitalLabel = [[UILabel alloc] init];
        self.dataSource = [NSMutableArray arrayWithArray:paramData];
        
        self.nameLabel.textColor = [UIColor whiteColor];
        self.professionalLabel.textColor = [UIColor whiteColor];
        self.hospitalLabel.textColor = [UIColor whiteColor];
        self.nameLabel.text = self.dataSource[0];
        self.professionalLabel.text = self.dataSource[1];
        self.hospitalLabel.text = self.dataSource[2];
        
        [self addSubview:self.nameLabel];
        [self addSubview:self.professionalLabel];
        [self addSubview:self.hospitalLabel];
    }
    return self;
}


-(void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.layer.cornerRadius = self.imageView.frame.size.width/2;
    float labelContentHeight = [self.nameLabel getHeighthWithSystemFontSize:kNameLabelTextFont]+[self.hospitalLabel getHeighthWithSystemFontSize:kHospitalLabelTextFont]+kNameLabelToHospitalLabelMargin;
    
    self.nameLabel.frame = CGRectMake(CGRectGetMaxX(self.imageView.frame)+kImageToNameLabelMargin, (self.frame.size.height-labelContentHeight)/2-self.imageView.bounds.origin.y, [self.nameLabel getWidthWithSystemFontSize:kNameLabelTextFont], [self.nameLabel getHeighthWithSystemFontSize:kNameLabelTextFont]);
    self.professionalLabel.frame = CGRectMake(CGRectGetMaxX(self.nameLabel.frame)+kNameLabelToProfessionalLabelMargin, CGRectGetMaxY(self.nameLabel.frame)-[self.professionalLabel getHeighthWithSystemFontSize:kProfessionalLabelTextFont], [self.professionalLabel getWidthWithSystemFontSize:kProfessionalLabelTextFont], [self.professionalLabel getHeighthWithSystemFontSize:kProfessionalLabelTextFont]);
    self.hospitalLabel.frame = CGRectMake(CGRectGetMinX(self.nameLabel.frame), CGRectGetMaxY(self.nameLabel.frame)+kNameLabelToHospitalLabelMargin,  [self.hospitalLabel getWidthWithSystemFontSize:kHospitalLabelTextFont], [self.hospitalLabel getHeighthWithSystemFontSize:kHospitalLabelTextFont]);
}

+ (id)doctorButtonWithFrame:(CGRect)frame andData:(NSMutableArray *)paramData {
    CYLQuestionDetailDoctorButton *button=[[CYLQuestionDetailDoctorButton
                                            alloc]
                                           initDoctorButtonWithFrame:frame andData:paramData];
    return button;
}

-(void)buttonClick:(id)sender {
    if ([self respondsToSelector:@selector(questionDetailDoctorButtonClicked:)]) {
        [self.delegate questionDetailDoctorButtonClicked:sender];
    }
    NSLog(@"‼️‼️‼️‼️‼️questionDetailDoctorButtonClicked");
}
@end
