//
//  ViewController.m
//  BlockBlock
//
//  Created by wxk on 2017/5/3.
//  Copyright © 2017年 wangxiaokang. All rights reserved.
//

#import "ViewController.h"
#import "BlockCommonVC.h"
#import "BlockPassByValueVC.h"
#import "BlockExtendedUseVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// block常识
- (IBAction)blockCommon:(id)sender
{
    NSLog(@"block常识");
    BlockCommonVC * blockVC = [[BlockCommonVC alloc] init];
    [self presentViewController:blockVC animated:YES completion:nil];
}

// block传值
- (IBAction)exchangeValue:(id)sender
{
    BlockPassByValueVC * BlockPVc = [[BlockPassByValueVC alloc] init];
    
    /**
     passValueBlock 是 BlockPVc 这样控制器里的 block
     valueStr 为 BlockPVc 控制器要传递过来的参数
     {}括号里的代码是在BlockPVc的.m文件里传了参数运行block的时候才会调用
     */
    BlockPVc.passValueBlock = ^(NSString *valueStr) {
        NSLog(@"传过来的值 = %@",valueStr);
    };
    [self presentViewController:BlockPVc animated:YES completion:nil];
}

// block做参数与做返回值
- (IBAction)blockMore:(id)sender
{
    NSLog(@"block做参数与做返回值");
    BlockExtendedUseVC * blockVC = [[BlockExtendedUseVC alloc] init];
    [self presentViewController:blockVC animated:YES completion:nil];
}

@end
