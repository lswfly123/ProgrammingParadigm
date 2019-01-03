//
//  LSWKVONotifying_Person.m
//  链式编程
//
//  Created by 信息科技部 on 2019/1/2.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "LSWKVONotifying_Person.h"
#import <objc/runtime.h>
extern NSString *const observerKey ;
@implementation LSWKVONotifying_Person

- (void)setName:(NSString *)name{
    
    [super setName:name];
    id observer = objc_getAssociatedObject(self, observerKey);
    [observer observeValueForKeyPath:@"name" ofObject:self change:@{@"name":name} context:nil];
}
@end
