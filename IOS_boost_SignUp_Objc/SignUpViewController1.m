//
//  SignUpViewController1.m
//  IOS_boost_SignUp_Objc
//
//  Created by 남수김 on 03/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

#import "SignUpViewController1.h"
#import "UserInfo.h"

@implementation SignUpViewController1{
    
    __weak IBOutlet UITextView *textView;
    __weak IBOutlet UIImageView *imageView;
    __weak IBOutlet UITextField *idTextField;
    __weak IBOutlet UITextField *pwTextField;
    __weak IBOutlet UITextField *pw2TextField;
    
    UserInfo *info;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    info = [UserInfo getInstance];
}


- (IBAction)nextBntClick:(UIButton *)sender {
    
    if([self emptyCheck]){
        
        //Alert생성
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"확인" message:@"빈칸이나 비밀번호를 확인해주세요" preferredStyle: UIAlertControllerStyleAlert];
        
        UIAlertAction * ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    
    else{
        info.userId = idTextField.text;
        info.userPw = pwTextField.text;
        info.userMemo = textView.text;
        
        NSLog(@"%@, %@", info.userId, info.userPw);
    }
}
- (IBAction)cancelBntClick:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


//빈칸이나 비밀번호 같은지 확인
- (Boolean)emptyCheck{
    if(idTextField.text == nil)
        return true;
    if(pwTextField.text == nil)
        return true;
    if(pwTextField.text != pw2TextField.text){
        return true;
    }
    
    return false;
}

@end
