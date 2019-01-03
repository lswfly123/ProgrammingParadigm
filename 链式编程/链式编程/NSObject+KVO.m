//
//  NSObject+KVO.m
//  链式编程
//
//  Created by 信息科技部 on 2019/1/2.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "NSObject+KVO.h"
#import <objc/runtime.h>
#import "LSWKVONotifying_Person.h"
const NSString *observerKey = @"observerKey";
@implementation NSObject (KVO)

- (void)lsw_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context{
    
    // 把观察者保存到当前对象
    objc_setAssociatedObject(self, (__bridge const void * _Nonnull)(observerKey), observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    // 将实际的类与自定义的类进行交换
    object_setClass(self, [LSWKVONotifying_Person class]);
}
@end
