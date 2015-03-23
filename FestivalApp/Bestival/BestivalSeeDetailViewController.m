//
//  BestivalSeeDetailViewController.m
//  FestivalApp
//
//  Created by MyMac on 25/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BestivalSeeDetailViewController.h"
#import "BSeePhotoCardTableViewCell.h"

#import "SharedManager.h"
#import "common_variables.h"

@interface BestivalSeeDetailViewController ()

@end

@implementation BestivalSeeDetailViewController

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


#pragma mark - UITableViewDelegate, Datasource
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *tableCellIdentifier = @"BSeePhotoCardTableViewCell";
    BSeePhotoCardTableViewCell *cell = (BSeePhotoCardTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableCellIdentifier];
    
    if (cell==nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:tableCellIdentifier owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 262;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}


- (IBAction)onBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
