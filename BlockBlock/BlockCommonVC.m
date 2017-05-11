//
//  BlockCommonVC.m
//  BlockBlock
//
//  Created by 王晓康 on 2017/5/11.
//  Copyright © 2017年 wangxiaokang. All rights reserved.
//

#import "BlockCommonVC.h"

@interface BlockCommonVC ()

@end

@implementation BlockCommonVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 返回值类型(^block的名字)(参数类型) = ^(参数类型和参数名) {};
    
    // 没有返回值,没有参数的定义方式
    void(^myBlock_1)() = ^{
        NSLog(@"mymyBlock_111");
    };
    myBlock_1();
    
    // 没有返回值，两个参数为int，必须要写参数,而且必须要有参数变量名
    void(^myBlock_2)(int, int) = ^(int a, int b){
        int c = a + b;
        NSLog(@" a + b = %d", c);
    };
    myBlock_2(2 ,3);
    
    // 带有返回值与参数 参数为int
    int(^myBlock_3)(int) = ^(int d){
        return d * d;
    };
    int e = myBlock_3(6);
    NSLog(@" d * d = %d",e);
    
    // 带有返回值与参数 参数为NSString
    NSString *(^myBlock_4)(NSString *) = ^(NSString * strA){
        return [NSString stringWithFormat:@"返回值字符串的Block-%@",strA];
    };
    NSLog(@"B4-%@",myBlock_4(@"BBBLOCK_4"));
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    UIButton * backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(20, 30, 80, 50);
    [backBtn setTitle:@"BACK" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    backBtn.titleLabel.font = [UIFont systemFontOfSize:22];
    [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:backBtn];
}

- (void) back
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
