//
//  ALProgrammaticallyViewController.m
//  Autolayouts-iOS
//
//  Created by Danil on 10.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "ALStoryboardlessViewController.h"

@interface ALStoryboardlessViewController ()
@property (weak, nonatomic) IBOutlet UIView *emptyView1;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIView *emptyView2;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIView *emptyView3;

@end

@implementation ALStoryboardlessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view removeConstraints:self.view.constraints];
    [self.emptyView1 removeConstraints:self.emptyView1.constraints];
    [self.button1 removeConstraints:self.button1.constraints];
    [self.emptyView2 removeConstraints:self.emptyView2.constraints];
    [self.button2 removeConstraints:self.button2.constraints];
    [self.emptyView3 removeConstraints:self.emptyView3.constraints];
    NSLayoutConstraint *emptyViewFirstLeading = [NSLayoutConstraint constraintWithItem:self.emptyView1
                                                                             attribute:NSLayoutAttributeLeading
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:self.view
                                                                             attribute:NSLayoutAttributeLeading
                                                                            multiplier:1.0
                                                                              constant:0];
    NSLayoutConstraint *emptyViewFirstBottom = [NSLayoutConstraint constraintWithItem:self.emptyView1
                                                                            attribute:NSLayoutAttributeBottom
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeBottom
                                                                           multiplier:1.0
                                                                             constant:0];
    NSLayoutConstraint *emptyViewFirstHeigt = [NSLayoutConstraint constraintWithItem:self.emptyView1
                                                                           attribute:NSLayoutAttributeHeight
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:nil
                                                                           attribute:0
                                                                          multiplier:1.0
                                                                            constant:50];
    NSLayoutConstraint *emptyViewFirstWidth = [NSLayoutConstraint constraintWithItem:self.emptyView1
                                                                           attribute:NSLayoutAttributeWidth
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:nil
                                                                           attribute:0
                                                                          multiplier:1.0
                                                                            constant:100];
    [self.view addConstraints:@[emptyViewFirstLeading,
                                emptyViewFirstBottom,
                                emptyViewFirstHeigt,
                                emptyViewFirstWidth]];
    NSLayoutConstraint *buttonFirstLeading = [NSLayoutConstraint constraintWithItem:self.button1
                                                                          attribute:NSLayoutAttributeLeading
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:self.emptyView1
                                                                          attribute:NSLayoutAttributeTrailing
                                                                         multiplier:1.0
                                                                           constant:0];
    NSLayoutConstraint *buttonFirstBottom = [NSLayoutConstraint constraintWithItem:self.button1
                                                                         attribute:NSLayoutAttributeBottom
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.view
                                                                         attribute:NSLayoutAttributeBottom
                                                                        multiplier:1.0
                                                                          constant:0];
    NSLayoutConstraint *buttonFirstHeight = [NSLayoutConstraint constraintWithItem:self.button1
                                                                         attribute:NSLayoutAttributeHeight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:nil
                                                                         attribute:0
                                                                        multiplier:1.0
                                                                          constant:50];
    NSLayoutConstraint *buttonFirstWidth = [NSLayoutConstraint constraintWithItem:self.button1
                                                                        attribute:NSLayoutAttributeWidth
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:nil
                                                                        attribute:0
                                                                       multiplier:1.0
                                                                         constant:100];
    [self.button1 addConstraints:@[buttonFirstHeight, buttonFirstWidth]];
    [self.view addConstraints:@[buttonFirstLeading, buttonFirstBottom]];
    NSLayoutConstraint *emptyViewSecondLeading = [NSLayoutConstraint constraintWithItem:self.emptyView2
                                                                             attribute:NSLayoutAttributeLeading
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:self.button1
                                                                             attribute:NSLayoutAttributeTrailing
                                                                            multiplier:1.0
                                                                              constant:0];
    NSLayoutConstraint *emptyViewSecondBottom = [NSLayoutConstraint constraintWithItem:self.emptyView2
                                                                            attribute:NSLayoutAttributeBottom
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.view
                                                                            attribute:NSLayoutAttributeBottom
                                                                           multiplier:1.0
                                                                             constant:0];
    NSLayoutConstraint *emptyViewSecondHeigt = [NSLayoutConstraint constraintWithItem:self.emptyView2
                                                                           attribute:NSLayoutAttributeHeight
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:self.emptyView1
                                                                           attribute:NSLayoutAttributeHeight
                                                                          multiplier:1.0
                                                                            constant:0];
    NSLayoutConstraint *emptyViewSecondWidth = [NSLayoutConstraint constraintWithItem:self.emptyView2
                                                                           attribute:NSLayoutAttributeWidth
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:self.emptyView1
                                                                           attribute:NSLayoutAttributeWidth
                                                                          multiplier:1.0
                                                                            constant:0];
    [self.view addConstraints:@[emptyViewSecondLeading,
                                emptyViewSecondBottom,
                                emptyViewSecondHeigt,
                                emptyViewSecondWidth]];
    NSLayoutConstraint *buttonSecondLeading = [NSLayoutConstraint constraintWithItem:self.button2
                                                                          attribute:NSLayoutAttributeLeading
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:self.emptyView2
                                                                          attribute:NSLayoutAttributeTrailing
                                                                         multiplier:1.0
                                                                           constant:0];
    NSLayoutConstraint *buttonSecondBottom = [NSLayoutConstraint constraintWithItem:self.button2
                                                                         attribute:NSLayoutAttributeBottom
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.view
                                                                         attribute:NSLayoutAttributeBottom
                                                                        multiplier:1.0
                                                                          constant:0];
    NSLayoutConstraint *buttonSecondHeight = [NSLayoutConstraint constraintWithItem:self.button2
                                                                         attribute:NSLayoutAttributeHeight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.button1
                                                                         attribute:NSLayoutAttributeHeight
                                                                        multiplier:1.0
                                                                          constant:0];
    NSLayoutConstraint *buttonSecondWidth = [NSLayoutConstraint constraintWithItem:self.button2
                                                                        attribute:NSLayoutAttributeWidth
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.button1
                                                                        attribute:NSLayoutAttributeWidth
                                                                       multiplier:1.0
                                                                         constant:0];
    [self.view addConstraints:@[buttonSecondLeading,
                                buttonSecondBottom,
                                buttonSecondHeight,
                                buttonSecondWidth]];
    NSLayoutConstraint *emptyViewThirdleading = [NSLayoutConstraint constraintWithItem:self.emptyView3
                                                                          attribute:NSLayoutAttributeLeading
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:self.button2
                                                                          attribute:NSLayoutAttributeTrailing
                                                                         multiplier:1.0
                                                                           constant:0];
    NSLayoutConstraint *emptyViewThirdBottom = [NSLayoutConstraint constraintWithItem:self.emptyView3
                                                                             attribute:NSLayoutAttributeBottom
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:self.view
                                                                             attribute:NSLayoutAttributeBottom
                                                                            multiplier:1.0
                                                                              constant:0];
    NSLayoutConstraint *emptyViewThirdHeigt = [NSLayoutConstraint constraintWithItem:self.emptyView3
                                                                            attribute:NSLayoutAttributeHeight
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.emptyView1
                                                                            attribute:NSLayoutAttributeHeight
                                                                           multiplier:1.0
                                                                             constant:0];
    NSLayoutConstraint *emptyViewThirdWidth = [NSLayoutConstraint constraintWithItem:self.emptyView3
                                                                            attribute:NSLayoutAttributeWidth
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.emptyView1
                                                                            attribute:NSLayoutAttributeWidth
                                                                           multiplier:1.0
                                                                             constant:0];
    [self.view addConstraints:@[emptyViewThirdleading,
                                emptyViewThirdBottom,
                                emptyViewThirdHeigt,
                                emptyViewThirdWidth]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
