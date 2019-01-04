//
//  TwoViewController.h
//  ReactiveCocoaDemo
//
//  Created by 信息科技部 on 2019/1/4.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReactiveCocoa.h"
NS_ASSUME_NONNULL_BEGIN

@interface TwoViewController : UIViewController

@property (nonatomic,strong)RACSubject *subject;
@end

NS_ASSUME_NONNULL_END
