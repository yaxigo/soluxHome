//
//  ViewController.m
//  SoluxiOSAPP
//
//  Created by ZhangHao on 2017/4/24.
//  Copyright © 2017年 ZhangHao. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self loadView];
    
}


-(void)loadView{
    [super loadView];
    //    imageView
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 50, 30, 30)];
    [self.view addSubview:imageView];
    imageView.image = [UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e603", 30, [UIColor redColor])];
    //    button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100, 40, 40);
    [button addTarget:self action:@selector(changeImages:) forControlEvents:6];
    [self.view addSubview:button];
    [button setImage:[UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e60c", 40, [UIColor redColor])] forState:UIControlStateNormal];
    [button setTintColor:[UIColor greenColor]];
    //    label,label可以将文字与图标结合一起，直接用label的text属性将图标显示出来
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 160, 280, 40)];
    [self.view addSubview:label];
    label.font = [UIFont fontWithName:@"iconfont" size:15];//设置label的字体
    label.text = @"这是用label显示的iconfont  \U0000e60c";
}

- (void)changeImages:(UIButton*)button{
    
    [button setImage:[UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e603", 40, [UIColor redColor])] forState:0];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
