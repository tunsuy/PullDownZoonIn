//
//  HeadView.h
//  PullDownZoonIn
//
//  Created by tunsuy on 5/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeadView : UIView

- (UIButton *)addLeftButton:(NSString *)buttonTitle withFont:(UIFont *)textFont;
- (UIButton *)addRightButton:(NSString *)buttonTitle withFont:(UIFont *)textFont;

@end
