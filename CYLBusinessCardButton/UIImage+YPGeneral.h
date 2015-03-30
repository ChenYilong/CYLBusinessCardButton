//
//  UIImage+YPGeneral.h
//  HuoQiuJiZhang-buyer
//
//  Created by 喻平 on 14-3-24.
//  Copyright (c) 2014年 com.huoqiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (YPGeneral)
+ (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

+ (UIImage *)stretchableImageNamed:(NSString *)name;
+ (UIImage *)stretchableImageNamed:(NSString *)name
                      leftCapWidth:(NSInteger)leftCapWidth
                      topCapHeight:(NSInteger)topCapHeight;

- (UIImage *)scaleByWidth:(CGFloat)width;
- (UIImage *)scaleByHeight:(CGFloat)height;

- (UIImage *)fixOrientation;

@end
