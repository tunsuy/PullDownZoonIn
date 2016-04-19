//
//  HeadView.m
//  PullDownZoonIn
//
//  Created by tunsuy on 5/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import "HeadView.h"

@implementation HeadView

- (instancetype) initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (UIButton *)addLeftButton:(NSString *)buttonTitle withFont:(UIFont *)textFont {
    UIButton *leftBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 20, 50, 44)];
    [leftBtn setTitle:buttonTitle forState:UIControlStateNormal];
    [leftBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    leftBtn.titleLabel.font = textFont;
    [self addSubview:leftBtn];
    return leftBtn;
}

- (UIButton *)addRightButton:(NSString *)buttonTitle withFont:(UIFont *)textFont {
    UIButton *rightBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.frame.size.width-50, 20, 50, 44)];
    [rightBtn setTitle:buttonTitle forState:UIControlStateNormal];
    [rightBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    rightBtn.titleLabel.font = textFont;
    [self addSubview:rightBtn];
    return rightBtn;
}

@end
