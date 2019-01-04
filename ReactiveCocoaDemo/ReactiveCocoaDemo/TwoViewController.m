//
//  TwoViewController.m
//  ReactiveCocoaDemo
//
//  Created by 信息科技部 on 2019/1/4.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "TwoViewController.h"
#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc]init];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.center.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(150, 35));
    }];
    btn.backgroundColor = [UIColor orangeColor];
    [[btn rac_signalForControlEvents:UIControlEventTouchUpInside]subscribeNext:^(id x) {
       
        [self.subject sendNext:@"代理调用成功"];
    }];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
