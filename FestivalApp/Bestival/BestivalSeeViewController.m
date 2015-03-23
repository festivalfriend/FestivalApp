//
//  BestivalSeeViewController.m
//  FestivalApp
//
//  Created by MyMac on 11/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BestivalSeeViewController.h"

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
//Select Details Category
#import "BestivalSeeDetailViewController.h"

//TableViewCells
#import "BSeeCategoryTableViewCell.h"
#import "BSeePhotoCardTableViewCell.h"


@interface BestivalSeeViewController ()

@end

@implementation BestivalSeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.m_mainTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
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
    return;
//    [self doButtonActions:sender actionIndex:2];
}

- (IBAction)onClickMap:(id)sender {
    NSLog(@"Map Button Clicked");
    [self doButtonActions:sender actionIndex:3];
}

- (IBAction)onClickFriends:(id)sender {
    NSLog(@"Friends Button Clicked");
    [self doButtonActions:sender actionIndex:4];
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

#pragma mark - UITableViewDelegate, Datasource
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(indexPath.row==0)
    {
        NSString *tableCellIdentifier = @"BSeeCategoryTableViewCell";
        BSeeCategoryTableViewCell *cell = (BSeeCategoryTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
        
        if (cell==nil) {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
    else
    {
        NSString *tableCellIdentifier = @"BSeePhotoCardTableViewCell";
        BSeePhotoCardTableViewCell *cell = (BSeePhotoCardTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
        
        if (cell==nil) {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        
        return cell;
        
    }
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row==0)
    {
        return 55;
    }
    else
    {
        return 262;
    }
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 15;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    BestivalSeeDetailViewController *detailVC = [[BestivalSeeDetailViewController alloc] init];
    [self.navigationController pushViewController:detailVC animated:YES];
}



@end
