//
//  ViewController.m
//  IOS_boost_SignUp_Objc
//
//  Created by 남수김 on 02/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

#import "ViewController.h"
#import "UserInfo.m"

@implementation ViewController {
    
    __weak IBOutlet UITextField *idTextField;
    __weak IBOutlet UITextField *pwTextField;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (IBAction)loginBtnClick:(id)sender {
    
    //로그인 성공시 다음화면
    if( [self excuteLoginWithId:idTextField.text pw:pwTextField.text] ){
        UIViewController *nextVC = [[self storyboard] instantiateViewControllerWithIdentifier: @"Info"];
        [self presentViewController: nextVC animated:true completion:nil];
    }
}
- (IBAction)signUpBntClick:(id)sender {
}


// 로그인 확인
- (Boolean)excuteLoginWithId: (NSString *) i pw: (NSString *) p {
    
    if( [[User sharedCreate] userId] == i && [[User sharedCreate] userPw] == p){
        return true;
    }else{
        return false;
    }
}

@end
