//
//  NSObject+Tool.m
//  BlockBlock
//
//  Created by wxk on 2017/5/11.
//  Copyright © 2017年 wangxiaokang. All rights reserved.
//

#import "NSObject+Tool.h"

@implementation NSObject (Tool)

+ (NSInteger)wxk_makeTool:(void (^)(MyTool *))block
{
    MyTool * myTool = [[MyTool alloc] init];
    block(myTool);
    return myTool.result;
}

@end
