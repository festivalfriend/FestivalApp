//
//  FriendDetailViewController.m
//  FestivalApp
//
//  Created by MyMac on 3/18/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "FriendDetailViewController.h"
#import "BFriendFestivalsTableViewCell.h"

@interface FriendDetailViewController ()

@end

@implementation FriendDetailViewController

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

#pragma mark - UITableViewDataSource,UITableViewDelegate
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"BFriendFestivalsTableViewCell";
    
    BFriendFestivalsTableViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 82;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}



#pragma mark - IBActions
- (IBAction)onBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onAddChat:(id)sender {
}
@end
