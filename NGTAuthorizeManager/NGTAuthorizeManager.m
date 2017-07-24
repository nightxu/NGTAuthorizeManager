//
//  NGTAuthorizeManager.m
//  NGTAuthorizeManagerDemo
//
//  Created by JoeXu on 2017/7/24.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import "NGTAuthorizeManager.h"

@interface NGTAuthorizeManager()

@property (nonatomic) dispatch_semaphore_t semaphore;
@property (nonatomic) dispatch_queue_t queue;

@end

@implementation NGTAuthorizeManager

+ (instancetype)global{
    
    static NGTAuthorizeManager *obj;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        obj = [[NGTAuthorizeManager alloc] initInner];
    });
    
    return obj;
}
- (instancetype)init{return nil;}
- (instancetype)initInner;{
    self = [super init];
    self.semaphore = dispatch_semaphore_create(1);
    self.queue = dispatch_queue_create(@"NGTAuthorizeManager".lowercaseString.UTF8String,DISPATCH_QUEUE_CONCURRENT);
    return self;
}


+ (void)authorizeForType:(NGTAuthorizeType)type
               completed:(NGTAuthorizeCompleted)completed{
    
    dispatch_async([[self global] queue], ^{
        dispatch_semaphore_wait([[self global] semaphore], DISPATCH_TIME_FOREVER);
        
        NGTAuthorizeCompleted block = ^(BOOL isAllow,NSError *error){
            
            if (completed) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    completed(isAllow,error);
                });
            }
            
            dispatch_semaphore_signal([[self global] semaphore]);
        };
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [NGTAuthorize authorizeForType:type completed:block];
        });
    });

}


@end
