//
//  ArtistsAllViewController.m
//  FestivalApp
//
//  Created by MyMac on 3/27/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "ArtistsAllViewController.h"
#import "AppDelegate.h"
#import "SWRevealViewController.h"
#import "SharedManager.h"
#import "common_variables.h"

#import "ArtistListTableViewCell.h"
#import "ArtistCardSingle.h"

@interface ArtistsAllViewController ()

@end

@implementation ArtistsAllViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.tableviewMain.backgroundColor = COLOR_BACKGROUND_VIEW;
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

- (IBAction)onBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)onMenu:(id)sender {
    
    SWRevealViewController *revealVC = [self revealViewController];
    [revealVC rightRevealToggle:sender];
}



#pragma mark - UITableViewCellDataSource, UITableViewCellDelegate
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"ArtistListTableViewCell";
    ArtistListTableViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.btnAddCancel.tag = 10+indexPath.row;
    [cell.btnAddCancel addTarget:self action:@selector(onAddButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
    
    
//    UITableViewCell *cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 82)];
//    
//    ArtistCardSingle *artist = [[ArtistCardSingle alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 82)];
//    [artist.lbArtistTitle setText:@"Artist Name"];
//    [artist.imgArtistPhoto setImage:[UIImage imageNamed:@"bestival_photo1"]];
//    artist.isGuid = NO;
//    
//    [cell addSubview:artist];
//    
//    return cell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 72;
}

-(void)onAddButtonClicked: (id)sender
{
    UIButton *btnTarget = (UIButton *)sender;
    
    if([SharedManager SharedManager].curFestival.b_guide)
    {
        ArtistListTableViewCell *cell = (ArtistListTableViewCell *)[self.tableviewMain cellForRowAtIndexPath:[NSIndexPath indexPathForItem:btnTarget.tag-10 inSection:0]];
        if(!cell.isAdded)
        {
            [btnTarget setImage:[UIImage imageNamed:@"icon_cancel_green"] forState:UIControlStateNormal];
            cell.lbArtistName.textColor = COLOR_STAGE_NEXT;
        }
        else
        {
            cell.lbArtistName.textColor = COLOR_TEXT_SECONDARY;
            [btnTarget setImage:[UIImage imageNamed:@"icon_add_grey"] forState:UIControlStateNormal];
        }
        cell.isAdded = !cell.isAdded;
    }
    else
    {
        [self.navigationController popViewControllerAnimated:YES];
    }
}


@end
