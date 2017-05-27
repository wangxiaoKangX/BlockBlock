//
//  BlockPassByValueVC.h
//  BlockBlock
//
//  Created by 王晓康 on 2017/5/11.
//  Copyright © 2017年 wangxiaokang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^wxkBlock) (NSString * value);

@interface BlockPassByValueVC : UIViewController

@property (nonatomic, copy) void(^passValueBlock)(NSString * valueStr);

@property (nonatomic, copy) wxkBlock wBlcok;

@end
