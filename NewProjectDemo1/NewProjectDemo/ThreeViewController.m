//
//  ThreeViewController.m
//  NewProjectDemo
//
//  Created by 俞乃胜 on 2017/4/19.
//  Copyright © 2017年 俞乃胜. All rights reserved.
//

#import "ThreeViewController.h"
#import "Model.h"
#import "ThreeTableViewCell.h"
@interface ThreeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UITableView *myTable;
@property (nonatomic,strong)NSMutableArray *dataArray;
@end

@implementation ThreeViewController

- (NSMutableArray *)dataArray{
    if(!_dataArray){
        
        _dataArray =[[NSMutableArray alloc]init];
        Model *model1 =[[Model alloc]init];
        model1.orderNumbers =@"213069256";
        model1.times =@"14:39";
        model1.jiaoYiHao =@"620132******2336";
        model1.Values =@"123.60元";
        
        Model *model2 =[[Model alloc]init];
        model2.orderNumbers =@"210369257";
        model2.times =@"14:52";
        model2.jiaoYiHao =@"620132******2336";
        model2.Values =@"0.01元";

        Model *model3 =[[Model alloc]init];
        model3.orderNumbers =@"210369260";
        model3.times =@"14:59";
        model3.jiaoYiHao =@"620132******2336";
        model3.Values =@"10.10元";

        Model *model4 =[[Model alloc]init];
        model4.orderNumbers =@"210369261";
        model4.times =@"15:03";
        model4.jiaoYiHao =@"620132******2336";
        model4.Values =@"3.01元";

        Model *model5 =[[Model alloc]init];
        model5.orderNumbers =@"210369262";
        model5.times =@"15:04";
        model5.jiaoYiHao =@"620132******2336";
        model5.Values =@"5.20元";
        
        [_dataArray addObject:model1];
        [_dataArray addObject:model2];
        [_dataArray addObject:model3];
        [_dataArray addObject:model4];
        [_dataArray addObject:model5];
        
    }
    return _dataArray;
}


- (UITableView *)myTable{
    if(!_myTable){
        _myTable =[[UITableView alloc]initWithFrame:CGRectMake(16, 64+50, screenWigth-32, screenHeight-64-49-50) style:UITableViewStyleGrouped];
        _myTable.delegate =self;
        _myTable.dataSource =self;
        [_myTable registerClass:[ThreeTableViewCell class] forCellReuseIdentifier:@"ThreeTableViewCell"];
        _myTable.layer.cornerRadius =8;
        _myTable.layer.masksToBounds =YES;
        
    }
    return _myTable;
}

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
    [self.view addSubview:self.myTable];
    [self creatBar];

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataArray.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 65;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    if (section ==self.dataArray.count-1) {
        return 0.1;
    }
    return 10;

    
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ThreeTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"ThreeTableViewCell" forIndexPath:indexPath];
    Model *model1 =self.dataArray[indexPath.section];
    cell.orderLab.text =model1.orderNumbers;
    cell.timesLab.text =model1.times;
    cell.jiaoYiHaoLab.text =model1.jiaoYiHao;
    cell.valuesLab.text =model1.Values;
    return cell;
}

- (void)creatBar{
    UIView *backView =[[UIView alloc]initWithFrame:CGRectMake(0, 64, screenWigth, 50)];
    backView.backgroundColor =[UIColor groupTableViewBackgroundColor];
    [self.view addSubview:backView];
    
    UIView *view1 =[[UIView alloc]initWithFrame:CGRectMake(16, 10, screenWigth-32, 35)];
    view1.backgroundColor =[UIColor groupTableViewBackgroundColor];
    view1.layer.cornerRadius =5;
    view1.layer.masksToBounds =YES;
    view1.layer.borderColor =[UIColor grayColor].CGColor;
    view1.layer.borderWidth =1;
    [backView addSubview:view1];
    
    UIButton *leftBut =[[UIButton alloc]initWithFrame:CGRectMake(0, 0, (screenWigth-32)/2, 35)];
    [leftBut setTitle:@"交易完成" forState:UIControlStateNormal];
    leftBut.backgroundColor =[UIColor grayColor];
    [view1 addSubview:leftBut];
    
    
    UIButton *rightBut =[[UIButton alloc]initWithFrame:CGRectMake((screenWigth-32)/2, 0, (screenWigth-30)/2, 35)];
    [rightBut setTitle:@"未完成" forState:UIControlStateNormal];
    [rightBut setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [view1 addSubview:rightBut];

}

@end
