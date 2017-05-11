//
//  BlockExtendedUseVC.m
//  BlockBlock
//
//  Created by 王晓康 on 2017/5/11.
//  Copyright © 2017年 wangxiaokang. All rights reserved.
//

#import "BlockExtendedUseVC.h"
#import "MyTool.h"
#import "NSObject+Tool.h"

@interface BlockExtendedUseVC ()

@end

@implementation BlockExtendedUseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSInteger  values = [NSObject wxk_makeTool:^(MyTool * tool) {
        tool.add(10).add(20).add(30);
    }];
    
    NSLog(@"values = %ld",(long)values);
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
