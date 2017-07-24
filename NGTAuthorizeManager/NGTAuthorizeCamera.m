//
//  NGTAuthorizeCamera.m
//  NGTAuthorizeManagerDemo
//
//  Created by JoeXu on 2017/7/24.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import "NGTAuthorizeCamera.h"

@implementation NGTAuthorizeCamera
+ (void)authorizeCompleted:(NGTAuthorizeCompleted)completed{
    
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if (authStatus == AVAuthorizationStatusRestricted
        || authStatus ==AVAuthorizationStatusDenied){
        
        if (completed){completed(NO,nil);}
        
    }else if(authStatus == AVAuthorizationStatusAuthorized){
        
        if (completed){completed(YES,nil);}
        
    }else{
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            
            if (completed) { completed(granted,nil);}
            
            
        }];
    }
    
}
@end
