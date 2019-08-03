//
//  UserInfo.m
//  IOS_boost_SignUp_Objc
//
//  Created by 남수김 on 03/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

#import "UserInfo.h"

@implementation UserInfo

//인스턴스객체 생성
+ (instancetype)getInstance{
    static dispatch_once_t pred;
    static UserInfo *shared = nil;
    
    dispatch_once(&pred, ^{
        shared = [[UserInfo alloc] init];
    });
    
    return shared;
}


@end
