//
//  LoginPage.h
//  test1
//
//  Created by liu on 17/1/4.
//  Copyright © 2017年 liu. All rights reserved.
//

#import "BasePage.h"

@interface LoginPage : BasePage

@property (weak, nonatomic) UIButton *signupBtu;
@property (weak, nonatomic) UIButton *loginBtu;

-(IBAction)jump2signup:(id)sender;
-(IBAction)jump2signin:(id)sender;

@end
