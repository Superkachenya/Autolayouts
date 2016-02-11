//
//  ALSimpleViewController.m
//  Autolayouts-iOS
//
//  Created by Danil on 11.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "ALSimpleViewController.h"

@interface ALSimpleViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *userPhoto;
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraint;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (assign, nonatomic) NSInteger bottomConstant;


@end

@implementation ALSimpleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.userPhoto.layer.cornerRadius = self.userPhoto.frame.size.width / 2;
    self.userPhoto.clipsToBounds = YES;
    self.userPhoto.layer.borderWidth = 3.0f;
    self.userPhoto.layer.borderColor = [UIColor orangeColor].CGColor;
    self.bottomConstant = self.bottomConstraint.constant;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
}

- (void)viewWillAppear:(BOOL)animated {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWasShown:)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
}

- (void)viewDidDisappear:(BOOL)animated {
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardWillShowNotification
                                                  object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardWillHideNotification
                                                  object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.textField resignFirstResponder];
    return YES;
}

- (void)keyboardWasShown:(NSNotification *)notification {
    NSDictionary *userInfo = notification.userInfo;
    CGSize kbSize = [[userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    self.bottomConstraint.constant = kbSize.height - self.bottomConstant;
}

- (void)keyboardWillBeHidden:(NSNotification *)notification {
    self.bottomConstraint.constant = self.bottomConstant;
}

-(void)dismissKeyboard {
    [self.textField resignFirstResponder];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
