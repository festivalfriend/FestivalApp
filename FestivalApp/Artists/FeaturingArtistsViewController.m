//
//  FeaturingAtistsViewController.m
//  FestivalApp
//
//  Created by My Mac on 4/3/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "FeaturingArtistsViewController.h"
#import "SWRevealViewController.h"
#import "SharedManager.h"

#import "FeaturingSingleTableViewCell.h"
#import "FeaturingDoubleTableViewCell.h"

@interface FeaturingArtistsViewController ()

@end

@implementation FeaturingArtistsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self initUI];
}

-(void)initUI
{
    NSInteger calIndex = [SharedManager getWeekDayIndex:[NSDate date]];
    if (calIndex>5) {
        calIndex -=7;
    }
    
    //Set the day next tomorrow
    [self.btnSunday setTitle:[[SharedManager SharedManager].arrWeekDays objectAtIndex:[SharedManager getWeekDayIndex:[NSDate date]]] forState:UIControlStateNormal];

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


#pragma mark - UITableViewDelegate, UITableViewDataSource
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(self.curTabIndex ==0 && indexPath.row == 0)
        return 44;
    
    return 82;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"";
    if (self.curTabIndex == 0) {
        
        if(indexPath.row == 0)
        {
            UITableViewCell *cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 44)];
            
            UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 44)];
            [searchBar setSearchBarStyle:UISearchBarStyleMinimal];
            [searchBar setPlaceholder:@"Search"];
            [searchBar setBarTintColor:COLOR_BACKGROUND_VIEW];
            [searchBar setBackgroundColor:COLOR_BACKGROUND_VIEW];
            
            [cell addSubview:searchBar];
            return cell;
        }
        else{
            cellIdentifier = @"FeaturingSingleTableViewCell";
            FeaturingSingleTableViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
            
            return cell;
        }
    }
    else{
        if(indexPath.row%2==0)
        {
            cellIdentifier = @"FeaturingSingleTableViewCell";
            FeaturingSingleTableViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
            
            return cell;
        }
        else
        {
            cellIdentifier = @"FeaturingDoubleTableViewCell";
            FeaturingDoubleTableViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
            
            return cell;
        }
    }
    
    return nil;
}


#pragma mark - IBAction Impementation
-(IBAction)onBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(IBAction)onClickDayMenu:(id)sender
{
    NSLog(@"Clicked StageMenu");
    
    UIButton *btnClicked = (UIButton *)sender;
    
    [self clearAllEffects];
    
    if(btnClicked == self.btnAll)
    {
        self.viewAll.hidden = NO;
        self.curTabIndex = 0;
    }
    if(btnClicked == self.btnToday)
    {
        self.viewToday.hidden = NO;
        self.curTabIndex = 1;
    }
    if(btnClicked == self.btnTomorrow)
    {
        self.viewTomorrow.hidden = NO;
        self.curTabIndex = 2;
    }
    if(btnClicked == self.btnSunday)
    {
        self.viewSunday.hidden = NO;
        self.curTabIndex = 3;
    }
    
    [btnClicked.titleLabel setFont:FONT_HELVETICA_MEDIUM(17.0f)];
    
    [self.tableviewMain reloadData];
    
}
-(IBAction)onMenu:(id)sender
{
    SWRevealViewController *revealVC = [self revealViewController];
    [revealVC rightRevealToggle:self];
}
-(void)clearAllEffects
{
    [self.btnAll.titleLabel setFont:FONT_HELVETICA_REGULAR(17.0f)];
    
    [self.btnToday.titleLabel setFont:FONT_HELVETICA_REGULAR(17.0f)];
    [self.btnTomorrow.titleLabel setFont:FONT_HELVETICA_REGULAR(17.0f)];
    [self.btnSunday.titleLabel setFont:FONT_HELVETICA_REGULAR(17.0f)];
    
    self.viewAll.hidden = YES;
    self.viewToday.hidden = YES;
    self.viewTomorrow.hidden = YES;
    self.viewSunday.hidden = YES;
}





@end
