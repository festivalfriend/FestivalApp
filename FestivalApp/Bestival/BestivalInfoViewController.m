//
//  BestivalInfoViewController.m
//  FestivalApp
//
//  Created by MyMac on 10/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BestivalInfoViewController.h"
#import "AppDelegate.h"
#import "SWRevealViewController.h"
#import "SharedManager.h"

#import "BInfoFirstTableViewCell.h"
#import "BInfoSecondTableViewCell.h"
#import "BInfoThirdTableViewCell.h"
#import "BInfoForthTableViewCell.h"
#import "BInfoFifthTableViewCell.h"

#import "BestivalInfoViewController.h"
#import "BestivalLineupViewController.h"
#import "BestivalSeeViewController.h"
#import "BestivalMapViewController.h"
#import "BestivalFriendViewController.h"


@interface BestivalInfoViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation BestivalInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
 
    [self.view setBackgroundColor:[UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1]];
    [self.m_mainTableView setBackgroundColor:[UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1]];
    self.m_mainTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    [self.lbNavigationBarTitle setText:[SharedManager SharedManager].curFestival.m_mainTitle];
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
//    CGRect newFrame = CGRectMake(0, 0, 300, 400);
//    self.m_contentView.frame = newFrame;
    
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
    return;
//    [self doButtonActions:sender actionIndex:0];
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


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

//    [cell setBackgroundColor:[UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1]];
//    
//    CGRect frame = [tableView rectForRowAtIndexPath:indexPath];
//    
//    UIView *cellContentView = [[UIView alloc] initWithFrame:CGRectMake(0, 10, frame.size.width, frame.size.height-10)];
//    [cell addSubview:cellContentView];
//    UIView *separateLineView = [[UIView alloc] initWithFrame:CGRectMake(0, frame.size.height-1, frame.size.width, 2)];
//    [separateLineView.layer setBorderColor:[UIColor colorWithRed:210/255.0f green:210/255.0f blue:210/255.0f alpha:1.0f].CGColor];
//    [separateLineView.layer setBorderWidth:2.0f];
//    [cell addSubview:separateLineView];
    
    
    NSString *tableCellIdentifier = @"";

    switch (indexPath.row) {
        case 0:
        {
            tableCellIdentifier = @"BInfoFirstTableViewCell";
            BInfoFirstTableViewCell *cell = (BInfoFirstTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
            if(cell == nil){
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
                cell = [nib objectAtIndex:0];
            }
            [cell setBackgroundColor:[UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1]];

            return cell;
            break;
        }
        case 1:
        {
            tableCellIdentifier = @"BInfoSecondTableViewCell";
            BInfoSecondTableViewCell *cell = (BInfoSecondTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
            if(cell == nil){
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
                cell = [nib objectAtIndex:0];
            }
            [cell setBackgroundColor:[UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1]];
            
            if([SharedManager SharedManager].curFestival.b_myFestival)
            {
                [cell.m_btnAction setTag:1];//Already Added
                [cell.m_lblStatus setText:@"My Festivals"];
                [cell.m_btnAction setImage:[UIImage imageNamed:@"icon_cancel"] forState:UIControlStateNormal];
                NSLog(@"**Added to My Festivals");

            }
            else
            {
                [cell.m_btnAction setTag:0];
                [cell.m_lblStatus setText:@"Add to My Festivals"];
                [cell.m_btnAction setImage:[UIImage imageNamed:@"icon_plus"] forState:UIControlStateNormal];
                NSLog(@"**Cancelled from My Festivals");
            }
            [cell.m_btnAction addTarget:self action:@selector(onCancelMyFestival:) forControlEvents:UIControlEventTouchUpInside];

            return cell;
            break;
        }
        case 2:
        {
            tableCellIdentifier = @"BInfoThirdTableViewCell";
            BInfoThirdTableViewCell *cell = (BInfoThirdTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
            if(cell == nil){
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
                cell = [nib objectAtIndex:0];
            }
            
            [cell setBackgroundColor:[UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1]];
            
            if([SharedManager SharedManager].curFestival.b_tickets)
            {
                cell.m_imgTicketsStatus.hidden = NO;
                [cell.m_lblTickets setText:@"Tickets"];
            }
            if([SharedManager SharedManager].curFestival.b_guide)
            {
                cell.m_imgGuideStatus.hidden = NO;
                [cell.m_lblGuide setText:@"Guide"];
            }
            
            [cell.m_btnTickets addTarget:self action:@selector(onClickTickets:) forControlEvents:UIControlEventTouchUpInside];
            [cell.m_btnGuide addTarget:self action:@selector(onClickGuide:) forControlEvents:UIControlEventTouchUpInside];

            return cell;
            break;
        }
            
        case 3:
        {
            tableCellIdentifier = @"BInfoForthTableViewCell";
            BInfoForthTableViewCell *cell = (BInfoForthTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
            if(cell == nil){
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
                cell = [nib objectAtIndex:0];
            }
            [cell setBackgroundColor:[UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1]];
            
//            [cell.m_textView setText:[SharedManager SharedManager].curFestival.m_contents];
            [cell.m_textView setText:@"Bestival is an award winning 4 day boutique music festival set at Ribin Hill - a beautiful leafy country park(a veritable Garden of Eden!) near Downend and Newport in the heart of the Isle of Wight."];
            cell.m_textView.textColor = COLOR_TEXT_SECONDARY;
            cell.m_textView.font = FONT_HELVETICA_REGULAR(14.0f);

            return cell;
            break;
        }
        case 4:
        {
            tableCellIdentifier = @"BInfoFifthTableViewCell";
            BInfoFifthTableViewCell *cell = (BInfoFifthTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
            if(cell == nil){
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
                cell = [nib objectAtIndex:0];
            }
            [cell setBackgroundColor:[UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1]];
            
            [cell.m_btnSite addTarget:self action:@selector(onClickAddressButton:) forControlEvents:UIControlEventTouchUpInside];
            [cell.m_btnFacebook addTarget:self action:@selector(onClickFacebook:) forControlEvents:UIControlEventTouchUpInside];
            [cell.m_btnTwitter addTarget:self action:@selector(onClickTwitter:) forControlEvents:UIControlEventTouchUpInside];
            
            return cell;
            break;
        }
        default:
            return nil;
            break;
    }
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    float h_height=0;
    NSString *str_string = @"Bestival is an award winning 4 day boutique music festival set at Ribin Hill - a beautiful leafy country park(a veritable Garden of Eden!) near Downend and Newport in the heart of the Isle of Wight.";
    
    switch (indexPath.row) {
        case 0:
            h_height = 178;
            break;
        case 1:
            h_height = 54;
            break;
        case 2:
            h_height = 55;
            break;
        case 3:
            h_height = [SharedManager getTextHeight:str_string width:[UIScreen mainScreen].bounds.size.width-20 fontSize:14.0f ];
            break;
        case 4:
            h_height = 55;
            break;
        default:
            break;
    }
    
    return h_height;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}


#pragma mark -
#pragma mark -Defined Buttons

-(void)onCancelMyFestival:(id)sender
{
    
    UIButton *btnTarget = (UIButton *)sender;
    BInfoSecondTableViewCell *cell = (BInfoSecondTableViewCell *)[self.m_mainTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:1 inSection:0]];

    [SharedManager SharedManager].curFestival.b_myFestival = ![SharedManager SharedManager].curFestival.b_myFestival;
    [[SharedManager SharedManager] update];

    if(btnTarget.tag == 0)// Current status is "Add to My Festivals"
    {
        [btnTarget setTag:1];
        [cell.m_lblStatus setText:@"My Festivals"];
        [cell.m_btnAction setImage:[UIImage imageNamed:@"icon_cancel"] forState:UIControlStateNormal];
        NSLog(@"**Added to My Festivals");

    }
    else{
        [cell.m_lblStatus setText:@"Add to My Festivals"];
        [cell.m_btnAction setImage:[UIImage imageNamed:@"icon_plus"] forState:UIControlStateNormal];
        [btnTarget setTag:0];
        NSLog(@"**Cancelled from My Festivals");
    }
    
    
}
-(void)onClickTickets:(id)sender
{
    NSLog(@"Tickets Button Clicked");
    
    if([SharedManager SharedManager].curFestival.b_tickets)
        return;
    BInfoThirdTableViewCell *cell = (BInfoThirdTableViewCell *)[self.m_mainTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:2 inSection:0]];

    cell.m_imgTicketsStatus.hidden = NO;
    [cell.m_lblTickets setText:@"Tickets"];

    [SharedManager SharedManager].curFestival.b_tickets = ![SharedManager SharedManager].curFestival.b_tickets;
    [[SharedManager SharedManager] update];
    
    
}
-(void)onClickGuide:(id)sender
{
    if([SharedManager SharedManager].curFestival.b_guide)
        return;
    BInfoThirdTableViewCell *cell = (BInfoThirdTableViewCell *)[self.m_mainTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:2 inSection:0]];
    cell.m_imgGuideStatus.hidden = NO;
    [cell.m_lblGuide setText:@"Guide"];
    [SharedManager SharedManager].curFestival.b_guide = ![SharedManager SharedManager].curFestival.b_guide;
    [[SharedManager SharedManager] update];

}

-(void)onClickAddressButton:(id)sender
{
    
    NSLog(@"Address Button Clicked");
}
-(void)onClickFacebook:(id)sender
{
    
    NSLog(@"Facebook Button Clicked");
}
-(void)onClickTwitter:(id)sender
{
    
    NSLog(@"Twitter Button Clicked");
}

@end
