//
//  NGTAuthorizeApply.h
//  NGTAuthorizeManagerDemo
//
//  Created by JoeXu on 2017/7/24.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^NGTAuthorizeCompleted)(BOOL isAllow,NSError *error);

@interface NGTAuthorize : NSObject

+ (void)authorizeCompleted:(NGTAuthorizeCompleted)completed;



@end
