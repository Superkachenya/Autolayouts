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

@end

@implementation ALSimpleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.userPhoto.layer.cornerRadius = self.userPhoto.frame.size.width / 2;
    self.userPhoto.clipsToBounds = YES;
    self.userPhoto.layer.borderWidth = 3.0f;
    self.userPhoto.layer.borderColor = [UIColor orangeColor].CGColor;
}

- (void)viewWillAppear:(BOOL)animated {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(getUpUserElements:)
                                                 name:UIKeyboardDidShowNotification
                                               object:nil];
}

- (void)viewDidDisappear:(BOOL)animated {
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardDidShowNotification
                                                  object:nil];
}

- (void)getUpUserElements:(NSNotification *)notification {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
