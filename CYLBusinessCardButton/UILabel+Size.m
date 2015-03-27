//
//  UILabel+Size.m
//  CYLDifferentColorTitleButton
//
//  Created by chenyilong on 15/3/26.
//  Copyright (c) 2015年 chenyilong. All rights reserved.
//

#import "UILabel+Size.h"

@implementation UILabel (Size)

-(float)getWidthWithSystemFontSize:(float)fontSize {
    self.font = [UIFont systemFontOfSize:fontSize];
    CGSize size = [self.text sizeWithAttributes:
                   @{NSFontAttributeName:
                         [UIFont systemFontOfSize:fontSize]}];
    return ceilf(size.width);
}

-(float)getHeighthWithSystemFontSize:(float)fontSize {
    self.font = [UIFont systemFontOfSize:fontSize];
    CGSize size = [self.text sizeWithAttributes:
                   @{NSFontAttributeName:
                         [UIFont systemFontOfSize:fontSize]}];
    return ceilf(size.height);
}
@end
