//
//  Header.h
//  SoluxiOSAPP
//
//  Created by ZhangHao on 2017/4/24.
//  Copyright © 2017年 ZhangHao. All rights reserved.
//

#ifndef Header_h
#define Header_h

#import "BaseViewController.h"

#import "TBCityIconFont.h"


//屏幕物理宽度
#define SCREENWITH   [UIScreen mainScreen].bounds.size.width
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
//屏幕物理高度
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

#define  NAVIGATIONTEXTCOLOR [UIColor colorWithRed:114/255.0 green:114.0/255.0 blue:114.0/255.0 alpha:1]
#define NAVIGATIONCOLOR [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1]
#define  BACKCOLOR [UIColor colorWithRed:241/255.0 green:241.0/255.0 blue:241.0/255.0 alpha:1]
#define TEXTCOLOR [UIColor colorWithRed:114/255.0 green:114.0/255.0 blue:114.0/255.0 alpha:1]



#define FONTSIZESYSFONT(A) [UIFont systemFontOfSize:A];

#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]

#endif /* Header_h */
