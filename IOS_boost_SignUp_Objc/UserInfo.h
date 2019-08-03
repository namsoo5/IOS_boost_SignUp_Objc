//
//  UserInfo.h
//  IOS_boost_SignUp_Objc
//
//  Created by 남수김 on 03/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserInfo : NSObject


@property NSString *userId;
@property NSString *userPw;
@property NSString *userBirth;
@property NSString *userMemo;

+ (instancetype)getInstance;

@end

NS_ASSUME_NONNULL_END
