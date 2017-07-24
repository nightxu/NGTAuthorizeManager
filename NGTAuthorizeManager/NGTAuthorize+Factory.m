//
//  NGTAuthorizeApply+TypeApply.m
//  NGTAuthorizeManagerDemo
//
//  Created by JoeXu on 2017/7/24.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import "NGTAuthorize+Factory.h"


#import "NGTAuthorizeLocation.h"
#import "NGTAuthorizePhotoLibrary.h"
#import "NGTAuthorizeCamera.h"
#import "NGTAuthorizeMIC.h"
#import "NGTAuthorizeAddressBook.h"

@implementation NGTAuthorize (Factory)

+ (void)authorizeForType:(NGTAuthorizeType)type
               completed:(NGTAuthorizeCompleted)completed{
    
    switch (type) {
        case NGTAuthorizeTypeLocatioin:{
            [NGTAuthorizeLocation authorizeCompleted:completed];
            break;
        }
        case NGTAuthorizeTypePhotoLibrary:{
            [NGTAuthorizePhotoLibrary authorizeCompleted:completed];
            break;
        }
        case NGTAuthorizeTypeCamera:{
            [NGTAuthorizeCamera authorizeCompleted:completed];
            break;
        }
        case NGTAuthorizeTypeMIC:{
            [NGTAuthorizeMIC authorizeCompleted:completed];
            break;
        }
        case NGTAuthorizeTypeAddressBook:{
            [NGTAuthorizeAddressBook authorizeCompleted:completed];
            break;
        }
            
        default:
            break;
    }
    
    
}

@end
