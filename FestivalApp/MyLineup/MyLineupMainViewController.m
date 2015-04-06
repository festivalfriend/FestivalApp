//
//  MyLineupMainViewController.m
//  FestivalApp
//
//  Created by My Mac on 4/2/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "MyLineupMainViewController.h"

#import "SWRevealViewController.h"
#import "SharedManager.h"

//TableViewCell
#import "BLineupListTableViewCell.h"

//CardView
#import "ArtistCardHalf.h"
@interface MyLineupMainViewController ()

@end

@implementation MyLineupMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    [self initUI];
}

-(void)initUI
{
    self.tableviewMain.backgroundColor = COLOR_BACKGROUND_VIEW;

    
    NSInteger calIndex = [SharedManager getWeekDayIndex:[NSDate date]];
    if (calIndex>5) {
        calIndex -=7;
    }
    [self.btnSunday setTitle:[[SharedManager SharedManager].arrWeekDays objectAtIndex:calIndex+1] forState:UIControlStateNormal];
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

#pragma mark - IBOutlets
- (IBAction)onClickDayMenu:(id)sender {
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

- (IBAction)onBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onMenu:(id)sender {
    
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

#pragma mark - UITableViewDelegate,UITableViewDataSource

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 82;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row%5!=0 || indexPath.row == 0)
    {
        NSString *cellIdentifier = @"BLineupListTableViewCell";
        BLineupListTableViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
        
        
        return cell;
    }
    else
    {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 82)];
        cell.backgroundColor = [UIColor lightGrayColor];
        
        float space = 5;
        float width_half = ([UIScreen mainScreen].bounds.size.width-20)/2-space;
        UIScrollView *cellScroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 82)];
        UIView *viewCellContent = [[UIView alloc] init];
        
        for (NSInteger i=0; i<3; i++) {
            CGRect frame = CGRectMake(10+i*(width_half+10), 0, width_half, 82);
            ArtistCardHalf *artistCard = [[ArtistCardHalf alloc] initWithFrame:frame];
            [viewCellContent addSubview:artistCard];
            
            [viewCellContent setFrame:CGRectMake(0, 0, artistCard.frame.origin.x+artistCard.frame.size.width+10, 82)];
            
        }
        cellScroll.contentSize = viewCellContent.frame.size;
        [cell addSubview:cellScroll];
        [cellScroll addSubview:viewCellContent];
        cellScroll.showsHorizontalScrollIndicator = NO;
        
        
        return cell;
    }
    
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}



@end
