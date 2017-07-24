//
//  NGTAuthorizeTelephony.h
//  NGTAuthorizeManagerDemo
//
//  Created by JoeXu on 2017/7/24.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import "NGTAuthorize.h"

//网络权限
#import <CoreTelephony/CTCellularData.h>
@interface NGTAuthorizeTelephony : NGTAuthorize




/*
 联网状态检测
 返回： 无网络/2G/3G/4G/wifi(wifi路由无网络时不做区分)
 */
+ (NSString *)networkStatus;
@end
