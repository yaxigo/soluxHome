//
//  HttpRequestClass.h
//  SoluxiOSAPP
//
//  Created by ZhangHao on 2017/4/24.
//  Copyright © 2017年 ZhangHao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpRequestClass : NSObject


+ (void)httpPostWithParams:(NSDictionary *)params
                    andTag:(NSString *)tag;

@end
