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
    
    UIImagePickerController *imagePicker;
    
    UserInfo *info;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    info = [UserInfo getInstance];
    imagePicker = [[UIImagePickerController alloc]init];
    imagePicker.delegate = self;
    
    
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
        
        //이미 지정해둔 manual segue
        [self performSegueWithIdentifier:@"signUp" sender:self];
    }
}
- (IBAction)cancelBntClick:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)imgBntClick:(id)sender {
    
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.allowsEditing = true;
    
    [self presentViewController:imagePicker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info{
    
    //key값으로 이미지 가져오기
    UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
    if(image){
        imageView.image = image;
    }
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
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
