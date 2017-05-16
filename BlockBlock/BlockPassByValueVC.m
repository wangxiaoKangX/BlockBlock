//
//  BlockPassByValueVC.m
//  BlockBlock
//
//  Created by 王晓康 on 2017/5/11.
//  Copyright © 2017年 wangxiaokang. All rights reserved.
//

#import "BlockPassByValueVC.h"

@interface BlockPassByValueVC ()

@end

@implementation BlockPassByValueVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    UIButton * backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(20, 30, 80, 50);
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    backBtn.titleLabel.font = [UIFont systemFontOfSize:22];
    [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:backBtn];
}
- (void) back
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (self.passValueBlock) // 如果在上一个页面调用了这个block，就执行下面的方法
    {
        self.passValueBlock(@"10086"); //把这里的值当参数传递过去
    }
    [self back];
}

@end
