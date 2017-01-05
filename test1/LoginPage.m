//
//  LoginPage.m
//  test1
//
//  Created by liu on 17/1/4.
//  Copyright © 2017年 liu. All rights reserved.
//

#import "LoginPage.h"
#import "SignupPage.h"
#import "SigninPage.h"

@interface LoginPage ()

@end

@implementation LoginPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)jump2signup:(id)sender{
    SignupPage *signupPage = [[SignupPage alloc] init];
    [self presentViewController:signupPage animated:YES completion:^{}];
}

-(IBAction)jump2signin:(id)sender{
    SigninPage *signinPage = [[SigninPage alloc] init];
    [self presentViewController:signinPage animated:YES completion:^{}];
}

@end
