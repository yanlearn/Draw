//
//  ViewController.m
//  testDraw
//
//  Created by xy on 2019/3/16.
//  Copyright © 2019年 xy. All rights reserved.
//

#import "ViewController.h"

#import "AnimateView.h"
@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%s",__func__);

    
    AnimateView *animateView = [[AnimateView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:animateView];
    
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"%s",__func__);
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"%s",__func__);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"%s",__func__);
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%s",__func__);
}
@end
