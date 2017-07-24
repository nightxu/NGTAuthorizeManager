//
//  ViewController.m
//  NGTAuthorizeManagerDemo
//
//  Created by JoeXu on 2017/7/24.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import "ViewController.h"

#import "NGTAuthorizeManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self apply];
    });
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [[UIButton alloc] initWithFrame:(CGRect){10,100,100,30}];
    button.backgroundColor = [UIColor blackColor];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setTitle:@"APPLY" forState:UIControlStateNormal];

    
    [self.view addSubview:button];
    [button addTarget:self action:@selector(apply) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)apply{
 
    
    [NGTAuthorizeManager authorizeForType:0 completed:^(BOOL isAllow, NSError *error) {
        NSLog(@"--- 0 --- \n%@\n\n",@{@"isAllow":@(isAllow),@"error":error?:@""});
    }];
    [NGTAuthorizeManager authorizeForType:1 completed:^(BOOL isAllow, NSError *error) {
        NSLog(@"--- 1 --- \n%@\n\n",@{@"isAllow":@(isAllow),@"error":error?:@""});
    }];
    [NGTAuthorizeManager authorizeForType:2 completed:^(BOOL isAllow, NSError *error) {
        NSLog(@"--- 2 --- \n%@\n\n",@{@"isAllow":@(isAllow),@"error":error?:@""});
    }];
    [NGTAuthorizeManager authorizeForType:3 completed:^(BOOL isAllow, NSError *error) {
        NSLog(@"--- 3 --- \n%@\n\n",@{@"isAllow":@(isAllow),@"error":error?:@""});
    }];
    [NGTAuthorizeManager authorizeForType:4 completed:^(BOOL isAllow, NSError *error) {
        NSLog(@"--- 4 --- \n%@\n\n",@{@"isAllow":@(isAllow),@"error":error?:@""});
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
