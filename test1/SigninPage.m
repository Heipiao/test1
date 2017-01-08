//
//  SigninPage.m
//  test1
//
//  Created by liu on 17/1/5.
//  Copyright © 2017年 liu. All rights reserved.
//

#import "SigninPage.h"
#import "MainPage.h"

@import FirebaseAuth;
@import Firebase;

#import <GoogleSignIn/GoogleSignIn.h>

@interface SigninPage ()

@end

@implementation SigninPage
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapEmailLogin:(id)sender {
        // [START headless_email_auth]
        [[FIRAuth auth] signInWithEmail:_emailField.text
                               password:_passwordField.text
                             completion:^(FIRUser *user, NSError *error) {
                                     if (error) {
                                         //[self showMessagePrompt:error.localizedDescription];
                                         return;
                                     }
                                     MainPage *mainpage = [[MainPage alloc] init];
                                    [self presentViewController:mainpage animated:YES completion:^{}];
                             }];
}

- (void)signIn:(GIDSignIn *)signIn
didSignInForUser:(GIDGoogleUser *)user
     withError:(NSError *)error {
    if (error == nil) {
        GIDAuthentication *authentication = user.authentication;
        FIRAuthCredential *credential =
        [FIRGoogleAuthProvider credentialWithIDToken:authentication.idToken
                                         accessToken:authentication.accessToken];
        [self firebaseLoginWithCredential:credential];
    } else
        NSLog(@"ERROR");
        return;
        }

- (void)signIn:(GIDSignIn *)signIn
didDisconnectWithUser:(GIDGoogleUser *)user
     withError:(NSError *)error {
    // Perform any operations when the user disconnects from app here.
    // ...
}


- (void)firebaseLoginWithCredential:(FIRAuthCredential *)credential {
    [[FIRAuth auth] signInWithCredential:credential
                              completion:^(FIRUser *user, NSError *error) {
                                  if (error) {
                                      // ...
                                      return;
                                  }
                                  NSLog(@"welcome: %@", user.email);
                              }];
        }

-(IBAction) googleSignin  {
    GIDSignIn *signin = [GIDSignIn sharedInstance];
    signin.shouldFetchBasicProfile = true;
    signin.delegate = self;
    signin.uiDelegate = self;
    [signin signIn];
}


@end
