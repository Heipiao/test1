//
//  SignupPage.m
//  test1
//
//  Created by liu on 17/1/4.
//  Copyright © 2017年 liu. All rights reserved.
//

#import "SignupPage.h"
#import "SigninPage.h"

@import FirebaseAuth;

@interface SignupPage ()

@end

@implementation SignupPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didCreateAccount:(id)sender {
    [[FIRAuth auth]
     createUserWithEmail:_emailField.text
     password:_passwordField.text
     completion:^(FIRUser *_Nullable user,
                  NSError *_Nullable error) {
             if (error) {
                 return;
             }
             NSLog(@"%@ created", user.email);
         SigninPage *signinPage = [[SigninPage alloc] init];
         [self presentViewController:signinPage animated:YES completion:^{}];
     }];
}


@end
