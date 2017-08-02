//
//  ViewController.m
//  GitHubTest
//
//  Created by Kyle on 2017/8/1.
//  Copyright © 2017年 lyj. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 200, 80, 35);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"点击跳转" forState:UIControlStateNormal];
    [button setTintColor:[UIColor cyanColor]];
    [button addTarget:self action:@selector(tapSelf) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}
- (void)tapSelf {
    SecViewController *vc = [[SecViewController alloc] initWithNibName:@"SecViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
