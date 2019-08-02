//
//  UserInfo.m
//  IOS_boost_SignUp_Objc
//
//  Created by 남수김 on 02/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User: NSObject

@property NSString *userId;
@property NSString *userPw;
@property NSString *userBirth;
@property NSString *userMemo;

@end


@implementation User

static User *shared;

+ (instancetype)sharedCreate {
    shared = [[User alloc] init];
    return shared;
}

@end
