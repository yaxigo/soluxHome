//
//  BaseViewController.h
//  SoluxiOSAPP
//
//  Created by ZhangHao on 2017/4/24.
//  Copyright © 2017年 ZhangHao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController <UIGestureRecognizerDelegate>


@property (assign) BOOL showStatusBar;
@property (assign) BOOL showNaviationBar;
@property (assign) BOOL showTabBar;

@property (nonatomic, strong) UIView * customMainView;
@property (nonatomic, strong) UIView * customNavigationView;
@property (nonatomic, strong) UILabel * customNavigationTitleLabel;
@property (nonatomic, strong) UIButton * customNavigationBackButton;
@property (nonatomic, strong) UIButton * customNavigationRightButton;
@property (nonatomic, strong) UIButton * customNavigationRightleftButton;
@property (nonatomic, strong) UIImageView * customNavigationLine;
@property (strong, nonatomic) NSLayoutConstraint * bottomConstraint;


@property (copy,nonatomic) NSString * isFather;





@end
