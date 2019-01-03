//
//  CalculateManager2.h
//  链式编程
//
//  Created by 信息科技部 on 2019/1/3.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CalculateManager2 : NSObject

@property(nonatomic,assign)int result;

- (instancetype)calculate:(int (^)(int result))calculateBlock;
@end

NS_ASSUME_NONNULL_END
