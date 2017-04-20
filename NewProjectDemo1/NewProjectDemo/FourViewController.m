//
//  FourViewController.m
//  NewProjectDemo
//
//  Created by 俞乃胜 on 2017/4/19.
//  Copyright © 2017年 俞乃胜. All rights reserved.
//

#import "FourViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.automaticallyAdjustsScrollViewInsets =NO;
    UIButton *img =[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 18, 18)];
    [img addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [img setImage:[UIImage imageNamed:@"turn_back"]
         forState:UIControlStateNormal];
    [img setImageEdgeInsets:UIEdgeInsetsMake(0, -8, 0, 8)];
    UIBarButtonItem *left =[[UIBarButtonItem alloc]initWithCustomView:img];
    left.tintColor =[UIColor lightGrayColor];
    self.navigationItem.leftBarButtonItem =left;
    
    self.view.backgroundColor =[UIColor groupTableViewBackgroundColor];
    
    [self creatdateTimeView];
    [self creatJieMian];
    
    self.tabBarController.tabBar.hidden =YES;
}


- (void)creatJieMian{
    WS(blockSelf);
    UITextField *text =[[UITextField alloc]initWithFrame:CGRectMake(10, 79, screenWigth-20, 35)];
    text.placeholder =@"  单号/卡号/交易金额";
    text.layer.cornerRadius =17.5;
    text.layer.masksToBounds =YES;
    [self.view addSubview:text];
    text.backgroundColor =[UIColor whiteColor];
    
    UILabel *text1Lab =[UILabel new];
    [self.view addSubview:text1Lab];
    [text1Lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(blockSelf.view).offset =10;
        make.top.equalTo(text.mas_bottom).offset =15;
        make.height.offset =35;
        make.width.offset =80;

    }];
    text1Lab.font =FontSize(14);
    text1Lab.text =@"收银员";
    text1Lab.textColor =[UIColor grayColor];
    

    UILabel *text2Lab =[UILabel new];
    [self.view addSubview:text2Lab];
    [text2Lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(blockSelf.view).offset =10;
        make.top.equalTo(text1Lab.mas_bottom).offset =15;
        make.height.offset =35;
        make.width.offset =80;

    }];
    text2Lab.font =FontSize(14);
    text2Lab.text =@"查询日期";
    text2Lab.textColor =[UIColor grayColor];
    
    UILabel *info1Lab =[UILabel new];
    [self.view addSubview:info1Lab];
    [info1Lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(blockSelf.view).offset =-15;
        make.top.equalTo(text.mas_bottom).offset =15;
        make.height.offset =35;
        make.left.equalTo (text1Lab.mas_right).offset =20;
    }];
    info1Lab.font =FontSize(14);
    info1Lab.text =@"  全部";
    info1Lab.backgroundColor =[UIColor whiteColor];
    info1Lab.layer.borderColor =[UIColor lightGrayColor].CGColor;
    info1Lab.layer.borderWidth =1;
    info1Lab.layer.cornerRadius =8;
    info1Lab.layer.masksToBounds =YES;
    
    
    UILabel *info2Lab =[UILabel new];
    [self.view addSubview:info2Lab];
    [info2Lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(blockSelf.view).offset =-15;
        make.top.equalTo(text1Lab.mas_bottom).offset =15;
        make.height.offset =35;
        make.left.equalTo (text1Lab.mas_right).offset =20;
    }];
    info2Lab.font =FontSize(14);
    info2Lab.text =@" 2017年3月5日";
    info2Lab.backgroundColor =[UIColor whiteColor];
    info2Lab.layer.borderColor =[UIColor lightGrayColor].CGColor;
    info2Lab.layer.borderWidth =1;
    info2Lab.layer.cornerRadius =8;
    info2Lab.layer.masksToBounds =YES;
    
    UIButton *but =[UIButton new];
    [self.view addSubview:but];
    [but mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(info2Lab.mas_bottom).offset =20;
        make.left.equalTo(blockSelf.view).offset =10;
        make.right.equalTo(blockSelf.view).offset =-10;
        make.height.offset =35;
    }];
    but.backgroundColor =[UIColor grayColor];
    [but setTitle:@"查询" forState:UIControlStateNormal];
    but.layer.cornerRadius =5;
    but.layer.masksToBounds =YES;
 
}

- (void)creatdateTimeView{

    WS(blockSelf);
    UIView *backView =[UIView new];
    [self.view addSubview:backView];
    [backView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(blockSelf.view).offset =0;
        make.left.equalTo(blockSelf.view).offset =0;
        make.right.equalTo(blockSelf.view).offset =0;
        make.height.offset =260;
    }];
    
    UIButton *but1 =[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 40, 30)];
    [but1 setImage:[UIImage imageNamed:@"turn_back"] forState:UIControlStateNormal];
    [backView addSubview:but1];
    
    UIButton *but2 =[[UIButton alloc]initWithFrame:CGRectMake(45, 0, 40, 30)];
    [but2 setImage:[UIImage imageNamed:@"turn_back"] forState:UIControlStateNormal];
    [backView addSubview:but2];
    but2.transform =CGAffineTransformMakeRotation(M_PI);
    
    
    UIButton *but3 =[[UIButton alloc]initWithFrame:CGRectMake(screenWigth-95, 0, 40, 30)];
    [but3 setTitle:@"清除" forState:UIControlStateNormal];
    [but3 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [backView addSubview:but3];
    
    UIButton *but4 =[[UIButton alloc]initWithFrame:CGRectMake(screenWigth-50, 0, 40, 30)];
    [but4 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [but4 setTitle:@"完成" forState:UIControlStateNormal];
    [backView addSubview:but4];
    

    UIDatePicker *datePike =[[UIDatePicker alloc]init];
    [backView addSubview:datePike];
    [datePike mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(backView).offset =30;
        make.left.equalTo(backView).offset =0;
        make.bottom.equalTo(backView).offset =0;
        make.right.equalTo(backView).offset =0;
    }];
    datePike.datePickerMode =UIDatePickerModeDate;





}


@end
