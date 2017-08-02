//
//  SecViewController.m
//  GitHubTest
//
//  Created by Kyle on 2017/8/1.
//  Copyright © 2017年 lyj. All rights reserved.
//

#import "SecViewController.h"


#define KRGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]


@interface SecViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataSource;
@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureAlloc];
    [self configureUI];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)configureAlloc{
    self.dataSource = @[].mutableCopy;
    NSArray *arr = @[@"英语统考资料",@"英语统考模拟",@"英语错题挑战"];
    NSArray *arr2 = @[@"计算机统考资料",@"计算机统考模拟",@"计算机错题挑战"];
    [self.dataSource addObject:arr];
    [self.dataSource addObject:arr2];
    [self.tableView reloadData];
}

- (void)configureUI {
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height+20) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.tableFooterView = [UIView new];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 476 / 2.0)];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.clipsToBounds = YES;
    imageView.image = [UIImage imageNamed:@"15"];
    imageView.backgroundColor = [UIColor whiteColor];
    self.tableView.tableHeaderView = imageView;
    [self.view addSubview:self.tableView];
    
    UIView *navView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64)];
    navView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:navView];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setImage:[UIImage imageNamed:@"7"] forState:UIControlStateNormal];
    backBtn.frame = CGRectMake(0, 30, 40, 25);
    backBtn.backgroundColor = [UIColor clearColor];
    [backBtn addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    [navView addSubview:backBtn];
}

#pragma mark - tableViewDelegate
- (NSInteger )numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataSource.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dataSource[section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   static NSString *iden = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:iden];
    cell.selectionStyle = UITableViewCellSelectionStyleGray;
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.textColor = KRGB(50, 50, 50);
    cell.textLabel.font = [UIFont systemFontOfSize:16];
    cell.textLabel.text = self.dataSource[indexPath.section][indexPath.row];
    return cell;
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if (section==1) {
        
        UIView *view = [UIView new];
        view.backgroundColor = KRGB(234, 234, 234);
        return view;
    }else if (section==0){
        UIView *view = [UIView new];
        view.backgroundColor = [UIColor whiteColor];
        return view;
    }else{
        return nil;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section==1) {
        return 5;
    }
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
- (void)backAction:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}


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
