//
//  StageAllViewController.m
//  FestivalApp
//
//  Created by MyMac on 3/28/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "StageAllViewController.h"
#import "AppDelegate.h"
#import "SWRevealViewController.h"
#import "SharedManager.h"
#import "common_variables.h"


#import "StageCardTableViewCell.h"

@interface StageAllViewController ()

@end

@implementation StageAllViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.lbNavigationTitle setText:@"Stages"];
    
    self.tableviewMain.separatorStyle = UITableViewCellSeparatorStyleNone;
    
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

#pragma mark - UITableViewDataSource, UITableViewDelegate

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifer = @"StageCardTableViewCell";
    
    StageCardTableViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:cellIdentifer owner:self options:nil] objectAtIndex:0];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 235;
}

@end
