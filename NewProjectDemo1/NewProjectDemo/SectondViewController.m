//
//  SectondViewController.m
//  NewProjectDemo
//
//  Created by 俞乃胜 on 2017/4/19.
//  Copyright © 2017年 俞乃胜. All rights reserved.
//

#import "SectondViewController.h"

@interface SectondViewController ()

@end

@implementation SectondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat W =[UIScreen mainScreen].bounds.size.width;
    CGFloat H =[UIScreen mainScreen].bounds.size.height;
    
    
    UIView *backView =[[UIView alloc]initWithFrame:self.view.bounds];;
    [self.view addSubview:backView];
    backView.backgroundColor =[UIColor grayColor];
    



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
