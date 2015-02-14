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
    
    [self.navigationController pushViewController:controller animated:YES];
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
    
    UITableViewCell *cell;
    
    NSString *tableCellIdentifier = @"";

    switch (indexPath.row) {
        case 0:
            tableCellIdentifier = @"BInfoFirstTableViewCell";
            cell = (BInfoFirstTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
            if(cell == nil){
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
                cell = [nib objectAtIndex:0];
            }
            break;
            
        case 1:
            tableCellIdentifier = @"BInfoSecondTableViewCell";
            cell = (BInfoSecondTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
            if(cell == nil){
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
                cell = [nib objectAtIndex:0];
            }
            break;
            
        case 2:
            tableCellIdentifier = @"BInfoThirdTableViewCell";
            cell = (BInfoThirdTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
            if(cell == nil){
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
                cell = [nib objectAtIndex:0];
            }
            break;
            
        case 3:
            tableCellIdentifier = @"BInfoForthTableViewCell";
            cell = (BInfoForthTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
            if(cell == nil){
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
                cell = [nib objectAtIndex:0];
            }
            break;
        case 4:
            tableCellIdentifier = @"BInfoFifthTableViewCell";
            cell = (BInfoFifthTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
            if(cell == nil){
                NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
                cell = [nib objectAtIndex:0];
            }
            break;
        default:
            cell = nil;
            break;
    }
    
    [cell setBackgroundColor:[UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1]];
    
//    if(indexPath.row == 0)
//    {
//        
//        UIImageView *imageView = [[UIImageView alloc] init];
//        imageView.frame = CGRectMake(0, 0, cellContentView.frame.size.width, cellContentView.frame.size.height);
//        [imageView setImage: [UIImage imageNamed: @"bestival_photo1"]];
//        [cellContentView addSubview: imageView];
//    }
//    else if(indexPath.row == 1)
//    {
//        
//        
//        [cellContentView setBackgroundColor:[UIColor colorWithRed:143/255.0f green:195/255.0f blue:105/255.0f alpha:1.0f]];
//        UILabel *lblStatus = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, cellContentView.frame.size.width, cellContentView.frame.size.height)];
//        [lblStatus setText:@"My Festivals"];
//        [lblStatus setTextAlignment:NSTextAlignmentCenter];
//        [lblStatus setFont:[UIFont systemFontOfSize:17.0f]];
//        [lblStatus setTextColor:[UIColor whiteColor]];
//        
//        
//        UIButton *btnAction = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//        [btnAction addTarget:self action:@selector(onCancelMyFestival:) forControlEvents:UIControlEventTouchUpInside];
////        [btnAction setTitle:@"" forState:UIControlStateNormal];
//        [btnAction setImage:[UIImage imageNamed:@"icon_cancel"] forState:UIControlStateNormal];
//        [btnAction setFrame:CGRectMake(cellContentView.frame.size.width-44,0, 44, 44)];
//        [btnAction setTintColor:[UIColor whiteColor]];
//        [cellContentView addSubview:lblStatus];
//        [cellContentView addSubview:btnAction];
//        
//    }
//    else if(indexPath.row == 2)
//    {
//
//        UIButton *btnTickets = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//        [btnTickets addTarget:self action:@selector(onClickTickets:) forControlEvents:UIControlEventTouchUpInside];
//        [btnTickets setTitle:@"Tickets - £195" forState:UIControlStateNormal];
//        [btnTickets setBackgroundColor:[UIColor whiteColor]];
//        [btnTickets setFrame:CGRectMake(0,0, cellContentView.frame.size.width/2, 44)];
//        [btnTickets setTintColor:[UIColor colorWithRed:143/255.0f green:195/255.0f blue:105/255.0f alpha:1.0f]];
//        [btnTickets.titleLabel setFont:[UIFont systemFontOfSize:17.0f]];
//        
//        UIButton *btnGuide = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//        [btnGuide addTarget:self action:@selector(onClickGuide:) forControlEvents:UIControlEventTouchUpInside];
//        [btnGuide setTitle:@"Guide" forState:UIControlStateNormal];
//        [btnGuide setImage:[UIImage imageNamed:@"icon_check"] forState:UIControlStateNormal];
//        [btnGuide setBackgroundColor:[UIColor whiteColor]];
//        [btnGuide setFrame:CGRectMake(cellContentView.frame.size.width/2+10,0, cellContentView.frame.size.width/2, 44)];
//        [btnGuide setTintColor:[UIColor colorWithRed:143/255.0f green:195/255.0f blue:105/255.0f alpha:1.0f]];
//        [btnGuide.titleLabel setFont:[UIFont systemFontOfSize:17.0f]];
//        [cellContentView addSubview:btnGuide];
//        
//    }
//    else if(indexPath.row == 3)
//    {
//
//        UITextView *textView = [[UITextView alloc] init];
//        
//    }
//    else return nil;


    return cell;

}
-(CGFloat)getTextHeight:(NSString*)text width:(float)width fontSize: (float)fontSize
{
    NSDictionary *attributesDictionary = [NSDictionary dictionaryWithObject:[UIFont systemFontOfSize:fontSize] forKey: NSFontAttributeName];
    CGRect frame = [text boundingRectWithSize:CGSizeMake(width, 3000) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin attributes:attributesDictionary context:nil];
    return frame.size.height+20;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    float h_height=0;
    NSString *str_string = @"Bestival is an award winning 4 day boutique music festival set at Ribin Hill - a beautiful leafy country park(a veritable Garden of Eden!) near Downend and Newport in the heart of the Isle of Wight.";
    
    switch (indexPath.row) {
        case 0:
            h_height = 168+10;
            break;
        case 1:
            h_height = 44+10;
            break;
        case 2:
            h_height = 45+10;
            break;
        case 3:
            h_height = 50;
            h_height = [self getTextHeight:str_string width:[UIScreen mainScreen].bounds.size.width-20 fontSize:14.0f ];
            NSLog(@"%f",h_height);
            break;
        case 4:
            h_height = 45+10;
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

-(void)onCancelMyFestival:(id)action
{
    NSLog(@"My Festival Cancelled");
}
-(void)onClickTickets:(id)action
{
    NSLog(@"Tickets Button Clicked");
}
-(void)onClickGuide:(id)action
{
    NSLog(@"Guide Button Clicked");
}

@end
