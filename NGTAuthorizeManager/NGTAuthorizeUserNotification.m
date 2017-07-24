//
//  NGTAuthorizeUserNotification.m
//  NGTAuthorizeManagerDemo
//
//  Created by JoeXu on 2017/7/24.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import "NGTAuthorizeUserNotification.h"


@implementation NGTAuthorizeUserNotification


+ (void)authorizeCompleted:(NGTAuthorizeCompleted)completed{
    if(completed == nil) return;
    
    
    UIUserNotificationSettings *settings = [[UIApplication sharedApplication] currentUserNotificationSettings];
    switch (settings.types) {
        case UIUserNotificationTypeNone:
            completed(NO,nil);
            break;
        case UIUserNotificationTypeAlert:
            completed(YES,nil);
            break;
        case UIUserNotificationTypeBadge:
            completed(YES,nil);
            break;
        case UIUserNotificationTypeSound:
            completed(YES,nil);
            break;
            
        default:
            break;
    }
    
    
}

+ (UIUserNotificationType)types{
    
    UIUserNotificationSettings *settings = [[UIApplication sharedApplication] currentUserNotificationSettings];
    return settings.types;
    
}

@end
