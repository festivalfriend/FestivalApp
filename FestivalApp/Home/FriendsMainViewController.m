//
//  FriendsMainViewController.m
//  FestivalApp
//
//  Created by MyMac on 09/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "FriendsMainViewController.h"
#import "SWRevealViewController.h"

@interface FriendsMainViewController ()

@end

@implementation FriendsMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)onClickMenu:(id)sender {
    SWRevealViewController *swRevealVC = [self revealViewController];
    [swRevealVC rightRevealToggle:sender];
    
    
}

- (IBAction)onClickBack:(id)sender {
}
@end
