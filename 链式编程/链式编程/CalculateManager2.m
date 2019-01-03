//
//  CalculateManager2.m
//  链式编程
//
//  Created by 信息科技部 on 2019/1/3.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "CalculateManager2.h"

@implementation CalculateManager2

- (instancetype)calculate:(int (^)(int))calculateBlock{
    
    _result = calculateBlock(_result);
    return self;
}
@end
