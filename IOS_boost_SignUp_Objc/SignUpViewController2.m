//
//  SignUpViewController2.m
//  IOS_boost_SignUp_Objc
//
//  Created by 남수김 on 03/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

#import "SignUpViewController2.h"
#import "UserInfo.h"

@implementation SignUpViewController2 {
    
    __weak IBOutlet UIDatePicker *datePicker;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (NSString *)formatWithDate: (NSDate *)date{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    
 //   formatter.dateStyle = NSDateFormatterLongStyle;
    formatter.timeStyle = NSDateFormatterNoStyle;
    formatter.locale = [[NSLocale alloc]initWithLocaleIdentifier:@"ko_KR"];
    
    //원하는 포맷으로 날짜 변환
    formatter.dateFormat = @"yyyy-MM-dd";
    NSString *s = [formatter stringFromDate:date];
    
    return s;
}

- (IBAction)finishBtnClick:(UIButton *)sender {
    
    UserInfo.getInstance.userBirth = [self formatWithDate:datePicker.date];
    
    NSLog(@"%@", [self formatWithDate:datePicker.date]);
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelBtnClick:(UIButton *)sender {
    UserInfo.getInstance.userMemo = @"";
    UserInfo.getInstance.userId = @"";
    UserInfo.getInstance.userPw = @"";
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

/*
 formatter.dateStyle = NSDateFormatterMediumStyle;
2019. 7. 3.
 
 formatter.dateStyle = NSDateFormatterLongStyle;
  2019년 8월 3일
 
 
 */
