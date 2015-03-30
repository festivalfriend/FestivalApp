//
//  BestivalLineupViewController.m
//  FestivalApp
//
//  Created by MyMac on 11/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BestivalLineupViewController.h"

#import "AppDelegate.h"
#import "SWRevealViewController.h"
#import "SharedManager.h"
#import "common_variables.h"


//TableViewCell
#import "BLineupListTableViewCell.h"
#import "BLineupStageTableViewCell.h"
#import "BLineupMoreTableViewCell.h"
#import "BLineupButtonsTableViewCell.h"

//For MenuActions
#import "BestivalInfoViewController.h"
#import "BestivalLineupViewController.h"
#import "BestivalSeeViewController.h"
#import "BestivalMapViewController.h"
#import "BestivalFriendViewController.h"

#import "ArtistsAllViewController.h"
#import "StageAllViewController.h"
#import "StageMainViewController.h"

@interface BestivalLineupViewController ()

@end

@implementation BestivalLineupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate, Datasource
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(indexPath.row==0)
    {
        NSString *tableCellIdentifier = @"BLineupButtonsTableViewCell";
        BLineupButtonsTableViewCell *cell = (BLineupButtonsTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
        
        if (cell==nil) {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        
        [cell.m_btnAllArtists addTarget:self action:@selector(onAllArtists:) forControlEvents:UIControlEventTouchUpInside];
        [cell.m_btnStages addTarget:self action:@selector(onAllStages:) forControlEvents:UIControlEventTouchUpInside];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
    if(indexPath.row==1)
    {
        NSString *tableCellIdentifier = @"BLineupMoreTableViewCell";
        BLineupMoreTableViewCell *cell = (BLineupMoreTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
        
        if (cell==nil) {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        [cell.m_lblTitle setText:@"My Lineup"];
        [cell.btnMore addTarget:self action:@selector(onViewMoreLineup:) forControlEvents:UIControlEventTouchUpInside];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
    else if(indexPath.row<5)
    {
        NSString *tableCellIdentifier = @"BLineupListTableViewCell";
        BLineupListTableViewCell *cell = (BLineupListTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
        
        if (cell==nil) {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
    else
    {
        if(indexPath.row %2==0)
        {
            NSString *tableCellIdentifier = @"BLineupStageTableViewCell";
            BLineupStageTableViewCell *cell = (BLineupStageTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
            
            if (cell==nil) {
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
                cell = [nib objectAtIndex:0];
            }
            
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            
            return cell;
        }
        else
        {
            NSString *tableCellIdentifier = @"BLineupMoreTableViewCell";
            BLineupMoreTableViewCell *cell = (BLineupMoreTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
            
            if (cell==nil) {
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
                cell = [nib objectAtIndex:0];
            }
            NSInteger ind;
            ind = (indexPath.row-5)/2;
            cell.btnMore.tag = ind;
            
            [cell.btnMore addTarget:self action:@selector(onViewMoreStages:) forControlEvents:UIControlEventTouchUpInside];
            
            
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            return cell;
            
        }
        
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row==0)
    {
        return 44;
    }
    else if(indexPath.row==1)
    {
        return 35;
    }
    else if(indexPath.row<5)
    {
        return 82;
    }
    else
    {
        if(indexPath.row %2 ==0)
        {
            return 65;
        }
        else{
            return 35;
        }
    }
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 15;
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
    return;
//    [self doButtonActions:sender actionIndex:1];
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


-(void)onAllArtists : (id)sender
{
    ArtistsAllViewController *artistsAllVC = [[ArtistsAllViewController alloc] init];
    [self.navigationController pushViewController:artistsAllVC animated:YES];
}

-(void)onAllStages : (id)sender
{
    StageAllViewController *stageAllVC = [[StageAllViewController alloc] init];
    [self.navigationController pushViewController:stageAllVC animated:YES];
}

#pragma mark - MoreButton Actions
-(void)onViewMoreLineup : (id)sender
{
    NSLog(@"LineUp More Button Clicked");
}
-(void)onViewMoreStages : (UIButton *)sender
{
    NSLog(@"Tag:%ld",(long)sender.tag);
    StageMainViewController *stageMainVC = [[StageMainViewController alloc] init];
    
    [self.navigationController pushViewController:stageMainVC animated:YES];
}

@end
