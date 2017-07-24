//
//  NGTAuthorizeApply+TypeApply.h
//  NGTAuthorizeManagerDemo
//
//  Created by JoeXu on 2017/7/24.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import "NGTAuthorize.h"


typedef NS_ENUM(NSUInteger,NGTAuthorizeType){
    
    NGTAuthorizeTypeLocatioin,//位置
    NGTAuthorizeTypePhotoLibrary,//相册
    NGTAuthorizeTypeCamera,//相机
    NGTAuthorizeTypeMIC,//麦克风
    NGTAuthorizeTypeAddressBook,//通讯录
    
};

@interface NGTAuthorize (Factory)

+ (void)authorizeForType:(NGTAuthorizeType)type
               completed:(NGTAuthorizeCompleted)completed;

@end
