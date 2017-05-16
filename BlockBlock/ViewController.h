//
//  ViewController.h
//  BlockBlock
//
//  Created by wxk on 2017/5/3.
//  Copyright © 2017年 wangxiaokang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^wxkBlock)(NSString * valueStr);

@interface ViewController : UIViewController

@property (nonatomic, strong) void(^xkBlock)(NSString * valueStr);

@end

