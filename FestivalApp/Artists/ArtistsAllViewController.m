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

@interface ArtistsAllViewController ()

@end

@implementation ArtistsAllViewController

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
    UITableViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

@end
