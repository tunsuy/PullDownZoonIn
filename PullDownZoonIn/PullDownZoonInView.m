//
//  PullDownZoonInView.m
//  PullDownZoonIn
//
//  Created by tunsuy on 5/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import "PullDownZoonInView.h"

@implementation PullDownZoonInView

-(instancetype) initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.imageView = [[UIImageView alloc] initWithFrame:frame];
        self.image = [[UIImage alloc] init];
    }
    return self;
}

- (void) setImage:(UIImage *)image{
    self.imageView.image = image;
}

@end
