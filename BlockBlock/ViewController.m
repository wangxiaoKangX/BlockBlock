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
    NSLog(@"block传值");
    BlockPassByValueVC * blockVC = [[BlockPassByValueVC alloc] init];
    blockVC.passValueBlock = ^(NSString *valueStr) {
        NSLog(@"valueStr = %@",valueStr);
    };
    [self presentViewController:blockVC animated:YES completion:nil];
}

// block做参数与做返回值
- (IBAction)blockMore:(id)sender
{
    NSLog(@"block做参数与做返回值");
    BlockExtendedUseVC * blockVC = [[BlockExtendedUseVC alloc] init];
    [self presentViewController:blockVC animated:YES completion:nil];
}

@end
