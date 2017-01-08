//
//  SigninPage.h
//  test1
//
//  Created by liu on 17/1/5.
//  Copyright © 2017年 liu. All rights reserved.
//

#import "BasePage.h"

#import <GoogleSignIn/GoogleSignIn.h>

@interface SigninPage : BasePage  <GIDSignInDelegate,GIDSignInUIDelegate>

@property(weak, nonatomic) IBOutlet UITextField *emailField;
@property(weak, nonatomic) IBOutlet UITextField *passwordField;

@property(weak, nonatomic) IBOutlet UIButton *googleButton;

@end
