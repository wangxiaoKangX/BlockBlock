//
//  NSObject+Tool.h
//  BlockBlock
//
//  Created by wxk on 2017/5/11.
//  Copyright © 2017年 wangxiaokang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyTool.h"

@interface NSObject (Tool)

+ (NSInteger)wxk_makeTool:(void(^)(MyTool *))block;

@end
