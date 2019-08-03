//
//  LoginViewController.m
//  IOS_boost_SignUp_Objc
//
//  Created by 남수김 on 03/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

#import "LoginViewController.h"
#import "UserInfo.h"

@implementation LoginViewController{
    
    __weak IBOutlet UILabel *idLabel;
    __weak IBOutlet UILabel *pwLabel;
    __weak IBOutlet UILabel *birthLabel;
    __weak IBOutlet UITextView *textView;
    __weak IBOutlet UIButton *cancelBtn;
    
    UserInfo *user;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    user = [UserInfo getInstance];
    [self setUserInfo];
    [self designTextView];
}

- (void)setUserInfo {
    idLabel.text = user.userId;
    pwLabel.text = user.userPw;
    birthLabel.text = user.userBirth;
    textView.text = [@"가나다라 %@ 1234"stringByAppendingString:user.userMemo];
}

- (void)designTextView {
    textView.layer.borderWidth = 1.0;
    textView.layer.cornerRadius = 7.0;
    textView.layer.borderColor = UIColor.blackColor.CGColor;
}
- (IBAction)cancelBtnClick:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
