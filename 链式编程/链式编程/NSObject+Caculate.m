//
//  NSObject+Caculate.m
//  链式编程
//
//  Created by 信息科技部 on 2019/1/2.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "NSObject+Caculate.h"
#import "CaculateManager.h"
@implementation NSObject (Caculate)

+ (int)lsw_makeCaculate:(void (^) (CaculateManager *))block{
    
    CaculateManager *mgr = [[CaculateManager alloc]init];
    block(mgr);
    return mgr.result;
}
@end
