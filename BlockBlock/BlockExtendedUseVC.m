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
    
    // 链式变成  block做参数 做返回值
    NSInteger  values = [NSObject wxk_makeTool:^(MyTool * tool) {
        tool.add(10).add(20).add(30);
    }];
    
    NSLog(@"values = %ld",(long)values);
    
    
    // block作为参数的方法调用
    [self block_t_5:^{
        NSLog(@"完成block_t_5事件成功后，在进行其他操作");
    }];


    [self block_t_6:^(NSString *B_str) {
        NSLog(@"完成block_t_6事件成功后--%@",B_str);
    }];

    
    [self block_t_7:^(NSString *B_str7)
    {
        NSLog(@" -- %@",B_str7);
    }AndCodeName:1];

    
    [self block_t_8:^NSString *(NSString *B_str8) {
        return [NSString stringWithFormat:@"拼接一句话在传进的参数前 - %@",B_str8];
    }];
    
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

#pragma mark -- blcok作为参数
// block作为参数 无返回值 无参数(事件完成后调用block块里的方法)
- (void)block_t_5:(void(^)())finish
{
    NSLog(@"先处理block_t_5方法里的事件");
    // 在调用完此方法处理事件后 调用block块里的方法
    if (finish)
    {
        finish();
    }
}


// block作为参数 无返回值 参数为NSSstring类型
- (void)block_t_6:(void(^)(NSString * B_str)) finish
{
    NSLog(@"先处理block_t_6方法里的事件");
    if (finish)
    {
        NSString * tempStr = @"block_t_6传过去的参数";
        finish(tempStr);
    }
}

// block作为参数 无返回值 参数为NSSstring类型，根据另一个方法参数code的值来判断执行不同的block
- (void)block_t_7:(void(^)(NSString * B_str7))myBlock_7 AndCodeName:(int)code
{
    switch (code) {
        case 1:
        {
            NSLog(@"code等于111时的操作");
            if (myBlock_7)
            {
                myBlock_7(@"11111111");
            }
        }
            break;
        case 2:
        {
            NSLog(@"code等于222时的操作");
            if (myBlock_7)
            {
                myBlock_7(@"222222222");
            }
        }
            break;
        default:
        {
            if (myBlock_7)
            {
                myBlock_7(nil);
            }
        }
            break;
    }
}

// block作为参数 返回值为NSString类型 参数为NSString类型
- (void)block_t_8:(NSString *(^)(NSString * B_str8))myBlock_8
{
    //
    NSString * tempStr = @"T_str";
    if (myBlock_8)
    {
        tempStr = myBlock_8(tempStr);
        NSLog(@"tempStr = %@",tempStr);
    }
}



@end
