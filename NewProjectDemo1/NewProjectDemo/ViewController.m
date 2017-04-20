//
//  ViewController.m
//  NewProjectDemo
//
//  Created by 俞乃胜 on 2017/4/11.
//  Copyright © 2017年 俞乃胜. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "SectondViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
@interface ViewController ()

@property (nonatomic,strong)NSArray *ImgNameArray;

@end

@implementation ViewController
-(NSArray *)ImgNameArray{
    if (!_ImgNameArray)
    {
        _ImgNameArray =[[NSArray alloc]initWithObjects:@"HomePage",@"HomePage_",@"Order",@"Order_",@"Classification",@"Classification_",@"Infomation",@"Infomation_",@"PersonalCenter",@"PersonalCenter_",nil];
    }
    return _ImgNameArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];


    [self click];



}

#pragma mark --创建工程
- (void)click{
    
    [[NSUserDefaults standardUserDefaults] setObject:@"1" forKey:@"qiDongState"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    FirstViewController *firstVC =[[FirstViewController alloc]init];
    firstVC.title =@"录单";
    firstVC.tabBarItem.tag =101;
    [self creatTabBarWith:firstVC];
    UINavigationController *firstNav =[[UINavigationController alloc]initWithRootViewController:firstVC];
    
    SectondViewController *secondVC = [[SectondViewController alloc]init];
    secondVC.title =@"查单";
    secondVC.tabBarItem.tag =102;
    [self creatTabBarWith:secondVC];
    UINavigationController *secondNav =[[UINavigationController alloc]initWithRootViewController:secondVC];
    
    ThreeViewController *therdVC =[[ThreeViewController alloc]init];
    therdVC.title =@"流水账单";
    therdVC.tabBarItem.tag =103;
    [self creatTabBarWith:therdVC];
    UINavigationController *therdNav =[[UINavigationController alloc]initWithRootViewController:therdVC];
    
    FourViewController *fourVC =[[FourViewController alloc]init];
    fourVC.title =@"流水查询";
    fourVC.tabBarItem.tag =104;
    [self creatTabBarWith:fourVC];
    UINavigationController *fourNav =[[UINavigationController alloc]initWithRootViewController:fourVC];
    
    
    //tabbar的背景颜色
    UIView * mView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, screenWigth, 48)];//这是整个tabbar的颜色
    mView.backgroundColor =[UIColor whiteColor];
    mView.alpha=1;
    
    [self.tabBar insertSubview:mView atIndex:1];
    self.viewControllers =@[firstNav,secondNav,therdNav,fourNav];
    //进入APP默认第四个页面
    //  [self setSelectedIndex:3];
    self.delegate =self;
    
    
}
#pragma mark --tabBarControllerDelegate

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{
    //    DLog(@"这个怎么样");
    //    if (viewController.tabBarItem.tag ==104 ||viewController.tabBarItem.tag ==103) {
    //        if (![PubulicObj isLoging]) {
    //            LoginViewController *longinVC =[[LoginViewController alloc]init];
    //            CustomeViewController *navgation =[[CustomeViewController alloc]initWithRootViewController:longinVC];
    //            longinVC.backBlock =^(UIViewController *controller){
    //                self.tabBarController.selectedIndex =0;
    //                [controller dismissViewControllerAnimated:YES completion:nil];
    //            };
    //            [self presentViewController:navgation animated:YES completion:nil];
    //            return NO;
    //        }
    //    }
    //    return YES;
    return YES;
}

#pragma mark --创建tabbar的子ViewController
-(void)creatTabBarWith:(UIViewController *)controller
{
    [controller.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -3)];
    [controller.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:ZhuHong,NSForegroundColorAttributeName,nil] forState:UIControlStateSelected];
    UIImage *img =[[UIImage imageNamed:self.ImgNameArray[(controller.tabBarItem.tag-101)*2]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.image =img;
    
    UIImage *selct =[[UIImage imageNamed:self.ImgNameArray[(controller.tabBarItem.tag-101)*2+1]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.selectedImage= selct;
    
}
- (UIStatusBarStyle)preferredStatusBarStyleP{
    return UIStatusBarStyleLightContent;
    
}

@end
