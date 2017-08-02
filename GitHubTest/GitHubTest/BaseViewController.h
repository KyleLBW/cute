//
//  BaseViewController.h
//  GitHubTest
//
//  Created by Kyle on 2017/8/2.
//  Copyright © 2017年 lyj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *dataSorce;

- (void)configureUI;
/*   **/
- (void)configureAlloc;

- (void)getDataFromNet;
@end
