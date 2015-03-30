//
//  HomeFestivalViewController.m
//  FestivalApp
//
//  Created by MyMac on 06/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "HomeFestivalViewController.h"
#import "FestivalCardTableViewCell.h"
#import "SearchFestivalViewController.h"
#import "BestivalInfoViewController.h"

#import "SWRevealViewController.h"
#import "common_variables.h"
#import "SharedManager.h"

#import "FestivalObject.h"

@interface HomeFestivalViewController ()
{
    
}

@end

@implementation HomeFestivalViewController
@synthesize m_festivalArr = _m_festivalArr;
@synthesize m_curLoadType = _m_curLoadType;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    [self.mainTableView setBackgroundColor:[UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1]];
    self.m_festivalArr = [[NSMutableArray alloc] init];
    self.m_curLoadType = IS_GETTING_ALL_FESTIVALS;
    
    self.mainTableView.delegate = self;
    self.mainTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    //Activity Indicator
    self.m_activityIndicator.transform = CGAffineTransformMakeScale(3.0, 3.0);
    self.m_activityIndicator.hidden = NO;
    [self.m_activityIndicator startAnimating];
    
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    [self getAllFestivals];
    
}

#pragma mark -
#pragma mark Models for getting Festivals
-(void)getAllFestivals
{
    NSMutableArray *arrFestivals;

    arrFestivals = nil;
    
    
    arrFestivals = [SharedManager SharedManager].arrFestivals;

    [self getMatchedFestivals];
//    [self.mainTableView reloadData];
}

-(void)getMatchedFestivals
{
    NSInteger f_type;
    f_type = self.m_curLoadType;
    
    self.m_festivalArr = [[NSMutableArray alloc] init];
    if(f_type == IS_GETTING_ALL_FESTIVALS)
    {
        self.m_festivalArr = [SharedManager SharedManager].arrFestivals;
    }
    else if(f_type == IS_GETTING_MY_FESTIVALS)
    {
        for (FestivalObject *tmpFestival in [SharedManager SharedManager].arrFestivals) {
            if(tmpFestival.b_myFestival == YES)
            {
                [self.m_festivalArr addObject:tmpFestival];
            }
        }
    }
    
    [self.mainTableView reloadData];
}


#pragma mark -
#pragma mark NavigationView Delegate


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


#pragma mark -
#pragma mark UITableViewDataSource, UITableViewDelegate
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* tableCellIdentifier = @"FestivalCardTableViewCell";
    
    FestivalCardTableViewCell *cell = (FestivalCardTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
    if(cell == nil){
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"FestivalCardTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    FestivalObject *tmpFestival = [self.m_festivalArr objectAtIndex:indexPath.row];
    
    if(tmpFestival.b_myFestival)
    {
        [cell.TitleLabel setTextColor:[UIColor colorWithRed:143/255.0f green:195/255.0f blue:105/255.0f alpha:0.75f]];
    }

    cell.TitleLabel.text = tmpFestival.m_mainTitle;
    cell.UserLabel.text = [NSString stringWithFormat:@"%d",tmpFestival.m_userCnt];
    


    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 233;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //    return self.m_playerList.count;
    return self.m_festivalArr.count;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [SharedManager SharedManager].curFestival = [self.m_festivalArr objectAtIndex:indexPath.row];
    
    BestivalInfoViewController *bestivalInfoVC = [[BestivalInfoViewController alloc] init];
    [self.navigationController pushViewController:bestivalInfoVC animated:YES];
    
}

- (IBAction)onGetAllFestivals:(id)sender {

    if(self.m_curLoadType == IS_GETTING_ALL_FESTIVALS)
    {
        return;
    }
    self.m_curLoadType = IS_GETTING_ALL_FESTIVALS;
    
    [self getMatchedFestivals];
    self.m_whiteViewAll.hidden = NO;
    self.m_whiteViewMyFestivals.hidden = YES;
    [self.m_btnAll.titleLabel setFont:[UIFont boldSystemFontOfSize:17.0f]];
    [self.m_btnMyFestival.titleLabel setFont:FONT_HELVETICA_REGULAR(17.0f)];
    
    
}
- (IBAction)onGetMyFestivals:(id)sender {
    if(self.m_curLoadType == IS_GETTING_MY_FESTIVALS)
    {
        return;
    }
    self.m_curLoadType = IS_GETTING_MY_FESTIVALS;

    [self getMatchedFestivals];
    
    self.m_whiteViewAll.hidden = YES;
    self.m_whiteViewMyFestivals.hidden = NO;
    [self.m_btnAll.titleLabel setFont:FONT_HELVETICA_REGULAR(17.0f)];
    [self.m_btnMyFestival.titleLabel setFont:[UIFont boldSystemFontOfSize:17.0f]];
    
}

- (IBAction)onSearch:(id)sender {
    SearchFestivalViewController *searchFestivalVC = [[SearchFestivalViewController alloc] init];
    [self.navigationController pushViewController:searchFestivalVC animated:YES];
}

- (IBAction)onMenu:(id)sender {
    SWRevealViewController *revealController = [self revealViewController];
//    [revealController panGestureRecognizer];
//    [revealController tapGestureRecognizer];
    [revealController rightRevealToggle:sender];

}
@end
