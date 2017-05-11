//
//  BlockPassByValueVC.h
//  BlockBlock
//
//  Created by 王晓康 on 2017/5/11.
//  Copyright © 2017年 wangxiaokang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlockPassByValueVC : UIViewController

@property (nonatomic, strong) void(^passValueBlock)(NSString * valueStr);

@end
