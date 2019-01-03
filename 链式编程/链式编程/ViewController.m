//
//  ViewController.m
//  链式编程
//
//  Created by 信息科技部 on 2019/1/2.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "ViewController.h"
#import "CaculateManager.h"
#import "NSObject+Caculate.h"

#import "Person.h"
#import "NSObject+KVO.h"

#import "CalculateManager2.h"
@interface ViewController ()

@property (nonatomic,strong)Person *p;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _p = [[Person alloc]init];
    _p.name = @"张三";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    // 链式编程
//    int result = [NSObject lsw_makeCaculate:^(CaculateManager * mgr) {
//
//        mgr.add(10).add(5).add(8).multiply(2).multiply(2);
//    }];
//
//    NSLog(@"计算得到的结果为:%d",result);
    
    // 响应式编程
//    [_p lsw_addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
//    _p.name = @"李四";
    
    // 函数式编程
    CalculateManager2 *mgr = [[CalculateManager2 alloc]init];
    int result = [[mgr calculate:^int(int result) {
        
        result += 10;
        result *= 5;
        result -= 3;
        return result;
    }] result];
    NSLog(@"计算得到的结果值为：%d",result);
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    NSLog(@"观察者获得的信息%@",change);
}
@end
