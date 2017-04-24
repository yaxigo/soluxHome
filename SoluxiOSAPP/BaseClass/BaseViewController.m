//
//  BaseViewController.m
//  SoluxiOSAPP
//
//  Created by ZhangHao on 2017/4/24.
//  Copyright © 2017年 ZhangHao. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setCustomViews];

}




- (void)setCustomViews{
    self.view.multipleTouchEnabled=NO;
    self.customMainView.multipleTouchEnabled=NO;
    self.customNavigationView.multipleTouchEnabled=NO;
    int top = 0;
    int height = [UIScreen mainScreen].bounds.size.height;
    //隐藏自带导航栏
    [self.navigationController setNavigationBarHidden:YES];
    //设置左右侧滑功能
    //    if (IOS_VERSION >= 7.0) {
    //        self.navigationController.interactivePopGestureRecognizer.delegate = self;//添加手势
    //    }
    [self isGestureRecognizer:YES];
    
    if (self.showNaviationBar) {
        //自定义导航栏
        self.customNavigationView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREENWITH, top + 44)];
        [self.customNavigationView setBackgroundColor:NAVIGATIONCOLOR];
        [self.view addSubview:self.customNavigationView];
        
        //标题
        self.customNavigationTitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(SCREENWITH / 4, top, SCREENWITH / 2, 44)];
        self.customNavigationTitleLabel.backgroundColor = [UIColor clearColor];
        self.customNavigationTitleLabel.textAlignment = NSTextAlignmentCenter;
        self.customNavigationTitleLabel.textColor =NAVIGATIONTEXTCOLOR;
        self.customNavigationTitleLabel.font = [UIFont boldSystemFontOfSize:18];
        [self.customNavigationView addSubview:self.customNavigationTitleLabel];
        
        //返回按钮
        self.customNavigationBackButton = [UIButton buttonWithType:UIButtonTypeCustom];
        self.customNavigationBackButton.frame = CGRectMake(0, top, 34, 44);
        [self.customNavigationBackButton addTarget:self action:@selector(onBackAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.customNavigationBackButton setImage:[UIImage imageNamed:@"nav_back"] forState:UIControlStateNormal];
        self.customNavigationBackButton.hidden=YES;
        [self.customNavigationView addSubview:self.customNavigationBackButton];
        
        //右边按钮
        self.customNavigationRightButton= [UIButton buttonWithType:UIButtonTypeCustom];
        self.customNavigationRightButton.frame = CGRectMake(SCREENWITH-44, top, 34, 44);
        [self.customNavigationRightButton setTitleColor:TEXTCOLOR forState:UIControlStateNormal];
        [self.customNavigationRightButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        [self.customNavigationRightButton addTarget:self action:@selector(rightbtnaction) forControlEvents:UIControlEventTouchUpInside];
        self.customNavigationRightButton.hidden=YES;
        [self.customNavigationView addSubview:self.customNavigationRightButton];
        
        
        //右边靠左按钮
        self.customNavigationRightleftButton= [UIButton buttonWithType:UIButtonTypeCustom];
        self.customNavigationRightleftButton.frame = CGRectMake(SCREENWITH-104, top, 80, 44);
        [self.customNavigationRightleftButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.customNavigationRightleftButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        [self.customNavigationRightleftButton addTarget:self action:@selector(rightbtnaction) forControlEvents:UIControlEventTouchUpInside];
        self.customNavigationRightleftButton.hidden=YES;
        [self.customNavigationView addSubview:self.customNavigationRightleftButton];
        
        //横线
        self.customNavigationLine = [[UIImageView alloc] initWithFrame:CGRectMake(0, top + 43.5, SCREENWITH, 0.5)];
        self.customNavigationLine.backgroundColor = [UIColor colorWithRed:219.0/255.0 green:219.0/255.0 blue:219.0/255.0 alpha:1];
        self.customNavigationLine.hidden=NO;
        [self.customNavigationView addSubview:self.customNavigationLine];
        
        top += 44;
        height -= 44;
    }
    if (self.showTabBar) {
        height -= 48;
    }
    
    if ([_isFather isEqualToString:@"Yes"]) {
        
        self.customMainView = [[UIView alloc] initWithFrame:CGRectMake(0, top, SCREENWITH, [UIScreen mainScreen].bounds.size.height)];
    }else{
        
        self.customMainView = [[UIView alloc] initWithFrame:CGRectMake(0, top, SCREENWITH, height)];
    }
    [self.customMainView setBackgroundColor:BACKCOLOR];
    [self.view addSubview:self.customMainView];

    
}


-(void)isGestureRecognizer:(BOOL)is {
    
    if (is) {
        //设置左右侧滑功能
        if (IOS_VERSION >= 7.0) {
            self.navigationController.interactivePopGestureRecognizer.enabled = YES;
        }
        
    } else {
        //设置左右侧滑功能
        if (IOS_VERSION >= 7.0) {
            self.navigationController.interactivePopGestureRecognizer.enabled = NO;
        }
    }
}


-(void)onBackAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)rightbtnaction
{
    
}

-(void)leftbtnAction:(UIButton*)sender
{
    
}


@end
