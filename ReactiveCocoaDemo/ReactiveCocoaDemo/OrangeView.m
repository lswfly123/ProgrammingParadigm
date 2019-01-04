//
//  OrangeView.m
//  ReactiveCocoaDemo
//
//  Created by 信息科技部 on 2019/1/4.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "OrangeView.h"

@implementation OrangeView
- (instancetype)init{
    
    if (self = [super init]) {
        
        self.backgroundColor = [UIColor orangeColor];
    }
    return self;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.subject sendNext:[NSString stringWithFormat:@"%@被点击了",NSStringFromClass([self class])]];
}
@end
