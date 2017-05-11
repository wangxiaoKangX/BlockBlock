//
//  MyTool.m
//  BlockBlock
//
//  Created by wxk on 2017/5/11.
//  Copyright © 2017年 wangxiaokang. All rights reserved.
//

#import "MyTool.h"

@implementation MyTool

- (MyTool * (^)(NSInteger)) add
{
    return ^(NSInteger value){
        
        _result += value;
        return self;
        
    };
}

@end
