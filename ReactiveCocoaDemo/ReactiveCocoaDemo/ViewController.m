//
//  ViewController.m
//  ReactiveCocoaDemo
//
//  Created by 信息科技部 on 2019/1/3.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "ViewController.h"
// pod文件
#import "ReactiveCocoa.h"
#import <Masonry/Masonry.h>
// 控制器文件
#import "TwoViewController.h"
#import "ReactiveCocoaDemo-Swift.h"
// 自定义view
#import "OrangeView.h"
@interface ViewController ()

@property (nonatomic,strong)RACSubject *subject;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    // RACSignal:信号类，一般表示将来有数据传递，只要有数据改变，信号内部接收到数据，就会将数据传递出去
    // 1.创建信号
//    RACSignal *signal = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
//
//        // 3.发送信号
//        [subscriber sendNext:@1];
//        [subscriber sendCompleted];
//        return [RACDisposable disposableWithBlock:^{
//
//            NSLog(@"信号销毁");
//        }];
//    }];
//    // 2.订阅信号
//    [signal subscribeNext:^(id x) {
//
//        NSLog(@"接收到的信号值:%@",x);
//    }];
    
    
    
    // RACSubject：可以用来替换代理
    // RACSubject：信号提供者，自己可以发送信号
    // RACReplaySubject：RACSubject的子类，可以提供重复信号类
    
//    // 1.创建信号
//    RACSubject *subject = [RACSubject subject];
//    // 2.订阅信号
//    [subject subscribeNext:^(id x) {
//       
//        // block调用时刻:当信号发送新值，就会调用
//        NSLog(@"第一个订阅者%@",x);
//    }];
//    [subject subscribeNext:^(id x) {
//        
//        // block调用时刻:当信号发送新值，就会调用
//        NSLog(@"第二个订阅者%@",x);
//    }];
//    // 3.发送信号
//    [subject sendNext:@"1"];
    
    
    
//    // 1.创建信号
//    RACReplaySubject *replaySubject = [RACReplaySubject subject];
//
//    // 2.发送信号
//    [replaySubject sendNext:@1];
//    [replaySubject sendNext:@2];
//
//    // 3.订阅信号
//    [replaySubject subscribeNext:^(id x) {
//
//        NSLog(@"第一个订阅者接收到的数据%@",x);
//    }];
//    [replaySubject subscribeNext:^(id x) {
//
//        NSLog(@"第二个订阅者接收到的数据%@",x);
//    }];
    
    // RACSubject替换代理的实例:
    RACSubject *subject = [RACSubject subject];
    [subject subscribeNext:^(id x) {

        NSLog(@"谁被点击了？：%@",x);
        MyViewController *swiftVc = [[MyViewController alloc]init];
        [self.navigationController pushViewController:swiftVc animated:YES];
    }];
//    TwoViewController *twoVc = [[TwoViewController alloc]init];
//    twoVc.subject = subject;
//    [self.navigationController pushViewController:twoVc animated:YES];
    
    
    OrangeView *orangeView = [[OrangeView alloc]init];
    [self.view addSubview:orangeView];
    orangeView.subject = subject;
    [orangeView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.center.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    
    
    
    // RACTuple
}
@end
