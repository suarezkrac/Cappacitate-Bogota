//
//  HomeViewController.m
//  Restaurante EAN
//
//  Created by Developer Cymetria on 7/05/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _welcomeLabel.text = [_welcomeLabel.text stringByAppendingString:_dataTransfer];
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

- (IBAction)closeHome:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end




