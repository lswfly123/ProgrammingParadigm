//
//  CaculateManager.h
//  链式编程
//
//  Created by 信息科技部 on 2019/1/2.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CaculateManager : NSObject

@property (nonatomic,assign)int result;

- (CaculateManager *(^)(int))add;
- (CaculateManager *(^)(int))multiply;
@end

NS_ASSUME_NONNULL_END
