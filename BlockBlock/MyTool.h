//
//  MyTool.h
//  BlockBlock
//
//  Created by wxk on 2017/5/11.
//  Copyright © 2017年 wangxiaokang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyTool : NSObject

@property (nonatomic, assign) NSInteger result;

- (MyTool * (^)(NSInteger)) add;

@end
