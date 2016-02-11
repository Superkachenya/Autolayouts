//
//  ALProgrammaticallyViewController.m
//  Autolayouts-iOS
//
//  Created by Danil on 10.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "ALStoryboardlessViewController.h"

@interface ALStoryboardlessViewController ()

@property (weak, nonatomic) IBOutlet UIView *emptyViewFirst;
@property (weak, nonatomic) IBOutlet UIView *emptyViewSecond;
@property (weak, nonatomic) IBOutlet UIView *emptyViewThird;
@property (weak, nonatomic) IBOutlet UIButton *buttonFirst;
@property (weak, nonatomic) IBOutlet UIButton *buttonSecond;

@end

@implementation ALStoryboardlessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view removeConstraints:self.view.constraints];
    [self.emptyViewFirst removeConstraints:self.emptyViewFirst.constraints];
    NSLayoutConstraint *emptyViewFirstLeading = [NSLayoutConstraint constraintWithItem:self.emptyViewFirst
                                                                             attribute:NSLayoutAttributeLeading
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:self.view
                                                                             attribute:NSLayoutAttributeLeading
                                                                            multiplier:1.0
                                                                              constant:20];
    NSLayoutConstraint *emptyViewFirstBottom = [NSLayoutConstraint constraintWithItem:self.emptyViewFirst
                                                                             attribute:NSLayoutAttributeBottom
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:self.bottomLayoutGuide
                                                                             attribute:NSLayoutAttributeTop
                                                                            multiplier:1.0
                                                                              constant:20];
    [self.view addConstraint:emptyViewFirstLeading];
    [self.view addConstraint:emptyViewFirstBottom];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) goBack:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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
