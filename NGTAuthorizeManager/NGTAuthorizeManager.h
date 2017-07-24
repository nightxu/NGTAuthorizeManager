//
//  NGTAuthorizeManager.h
//  NGTAuthorizeManagerDemo
//
//  Created by JoeXu on 2017/7/24.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NGTAuthorize+Factory.h"

@interface NGTAuthorizeManager : NSObject

+ (void)authorizeForType:(NGTAuthorizeType)type
               completed:(NGTAuthorizeCompleted)completed;

@end
