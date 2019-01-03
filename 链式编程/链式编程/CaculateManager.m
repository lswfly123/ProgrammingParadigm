//
//  CaculateManager.m
//  链式编程
//
//  Created by 信息科技部 on 2019/1/2.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "CaculateManager.h"

@implementation CaculateManager

- (CaculateManager * _Nonnull (^)(int))add{
    
    __weak typeof(self) weakSelf = self;
    return ^(int value){
        
        weakSelf.result += value;
        return self;
    };
}

- (CaculateManager * _Nonnull (^)(int))multiply{
    
    __weak typeof(self) weakSelf = self;
    return ^(int value){
        
        weakSelf.result *= value;
        return self;
    };
}
@end
