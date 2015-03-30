//
//  BestivalFriendViewController.m
//  FestivalApp
//
//  Created by MyMac on 11/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BestivalFriendViewController.h"


#import "AppDelegate.h"
#import "SWRevealViewController.h"
#import "SharedManager.h"
#import "common_variables.h"


//For Menu Actions
#import "BestivalInfoViewController.h"
#import "BestivalLineupViewController.h"
#import "BestivalSeeViewController.h"
#import "BestivalMapViewController.h"
#import "BestivalFriendViewController.h"

//TableViewCell
#import "BFriendListTableViewCell.h"
//ButtonAction
#import "FriendDetailViewController.h"

@interface BestivalFriendViewController ()

@end

@implementation BestivalFriendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    if ([UIScreen mainScreen].bounds.size.width<420) {
//        [self.m_menuScrollView setContentOffset:CGPointMake(420-[UIScreen mainScreen].bounds.size.width, 0) animated:NO];
        [self.m_menuScrollView setContentInset:UIEdgeInsetsMake(0,[UIScreen mainScreen].bounds.size.width-420,0,0)];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - ButtonActions(on XIB)

- (IBAction)onClickBack:(id)sender {
    NSLog(@"Back Button Clicked");
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)onClickMenu:(id)sender {
    NSLog(@"Menu Button Clicked");
    SWRevealViewController *revealVC = [self revealViewController];
    [revealVC rightRevealToggle:sender];
}

- (IBAction)onClickInfo:(id)sender {
    NSLog(@"Info Button Clicked");
    [self doButtonActions:sender actionIndex:0];
}

- (IBAction)onClickLineup:(id)sender {
    NSLog(@"Lineup Button Clicked");
    [self doButtonActions:sender actionIndex:1];
}

- (IBAction)onClickSeeDo:(id)sender {
    NSLog(@"See&Do Button Clicked");
    [self doButtonActions:sender actionIndex:2];
}

- (IBAction)onClickMap:(id)sender {
    NSLog(@"Map Button Clicked");
    [self doButtonActions:sender actionIndex:3];
}

- (IBAction)onClickFriends:(id)sender {
    NSLog(@"Friends Button Clicked");
    return;
//    [self doButtonActions:sender actionIndex:4];
}

-(void)doButtonActions:(id)sender actionIndex:(NSInteger)index
{
    UIViewController *controller;
    
    switch (index) {
        case 0:
            controller = [[BestivalInfoViewController alloc] init];
            break;
        case 1:
            controller = [[BestivalLineupViewController alloc] init];
            break;
        case 2:
            controller = [[BestivalSeeViewController alloc] init];
            break;
        case 3:
            controller = [[BestivalMapViewController alloc] init];
            break;
        case 4:
            controller = [[BestivalFriendViewController alloc] init];
            break;
            
        default:
            break;
    }
    
    [self.navigationController pushViewController:controller animated:NO];
}

#pragma mark - UITableViewDelegate, UITableViewDataSource

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"BFriendListTableViewCell";
    
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil];
    BFriendListTableViewCell *cell = [nib objectAtIndex:0];

    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    FriendDetailViewController *friendDetailVC = [[FriendDetailViewController alloc] init];
    [self.navigationController pushViewController:friendDetailVC animated:YES];
}


@end
