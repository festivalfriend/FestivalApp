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

    self.view.backgroundColor = COLOR_BACKGROUND_VIEW;
    [self.lbNavigationBarTitle setText:[SharedManager SharedManager].curFestival.m_mainTitle];
    self.curTabIndex = 0;
    [self setTabItemSelected:self.curTabIndex];
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


- (IBAction)onClickCategory:(id)sender {
    
    UIButton *selectedButton = (UIButton *)sender;
    if(selectedButton == self.btnInfo)
    {
        self.curTabIndex = 0;
    }
    else if (selectedButton == self.btnSee)
    {
        self.curTabIndex = 1;
    }
    else if (selectedButton == self.btnEat)
    {
        self.curTabIndex = 2;
    }
    else if (selectedButton == self.btnDrink)
    {
        self.curTabIndex = 3;
    }
    else if (selectedButton == self.btnBuy)
    {
        self.curTabIndex = 4;
    }
    else if (selectedButton == self.btnFacilities)
        self.curTabIndex = 5;
    
    
    [self setTabItemSelected:self.curTabIndex];
    
}

-(void)setTabItemSelected : (NSInteger)selectedID
{
    [self clearAllSelectedEffects];

    switch (selectedID) {
        case 0:
            self.btnInfo.titleLabel.font = FONT_HELVETICA_MEDIUM(18.0f);
            self.viewInfo.hidden = NO;
            break;
        case 1:
            self.btnSee.titleLabel.font = FONT_HELVETICA_MEDIUM(18.0f);
            self.viewSee.hidden = NO;
            break;
        case 2:
            self.btnEat.titleLabel.font = FONT_HELVETICA_MEDIUM(18.0f);
            self.viewEat.hidden = NO;
            break;
        case 3:
            self.btnDrink.titleLabel.font = FONT_HELVETICA_MEDIUM(18.0f);
            self.viewDrink.hidden = NO;
            break;
        case 4:
            self.btnBuy.titleLabel.font = FONT_HELVETICA_MEDIUM(18.0f);
            self.viewBuy.hidden = NO;
            break;
        case 5:
            self.btnFacilities.titleLabel.font = FONT_HELVETICA_MEDIUM(18.0f);
            self.viewFacilities.hidden = NO;
            break;
        default:
            break;
    }
}

-(void)clearAllSelectedEffects
{
    self.viewInfo.hidden = YES;
    self.viewSee.hidden = YES;
    self.viewEat.hidden = YES;
    self.viewDrink.hidden = YES;
    self.viewBuy.hidden = YES;
    self.viewFacilities.hidden = YES;
    
    self.btnInfo.titleLabel.font = FONT_HELVETICA_LIGHT(18.0f);
    self.btnSee.titleLabel.font = FONT_HELVETICA_LIGHT(18.0f);
    self.btnEat.titleLabel.font = FONT_HELVETICA_LIGHT(18.0f);
    self.btnDrink.titleLabel.font = FONT_HELVETICA_LIGHT(18.0f);
    self.btnBuy.titleLabel.font = FONT_HELVETICA_LIGHT(18.0f);
    self.btnFacilities.titleLabel.font = FONT_HELVETICA_LIGHT(18.0f);
    
}

- (IBAction)onBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
