//
//  BaseViewController.m
//  GitHubTest
//
//  Created by Kyle on 2017/8/2.
//  Copyright © 2017年 lyj. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()
@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self configureAlloc];
    [self configureUI];
}
- (void)configureUI{
    
}
/*   **/
- (void)configureAlloc{
    self.dataSorce = @[].mutableCopy;
}

- (void)getDataFromNet {}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
