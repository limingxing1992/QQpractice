//
//  ViewController.h
//  QQpractice
//
//  Created by qianfeng on 15/12/3.
//  Copyright © 2015年 李明星. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^myblock)(NSString *name);

@interface ViewController : UIViewController

@property(nonatomic,copy)myblock bl;

@end

