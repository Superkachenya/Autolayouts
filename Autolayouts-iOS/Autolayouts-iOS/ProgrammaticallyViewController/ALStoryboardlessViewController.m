//
//  ALProgrammaticallyViewController.m
//  Autolayouts-iOS
//
//  Created by Danil on 10.02.16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "ALStoryboardlessViewController.h"

@interface ALStoryboardlessViewController ()

@end

@implementation ALStoryboardlessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
