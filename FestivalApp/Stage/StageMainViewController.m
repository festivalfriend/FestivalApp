//
//  StageMainViewController.m
//  FestivalApp
//
//  Created by MyMac on 3/27/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "StageMainViewController.h"

#import "SharedManager.h"

@interface StageMainViewController ()

@end

@implementation StageMainViewController

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

- (IBAction)onClickDayMenu:(id)sender {
    NSLog(@"Clicked StageMenu");
    
    UIButton *btnClicked = (UIButton *)sender;
    
    [self clearAllEffects];
    
    if(btnClicked == self.btnInfo)
    {
        self.viewInfo.hidden = NO;
    }
    if(btnClicked == self.btnToday)
    {
        self.viewToday.hidden = NO;
    }
    if(btnClicked == self.btnTomorrow)
    {
        self.viewTomorrow.hidden = NO;
    }
    if(btnClicked == self.btnAll)
    {
        self.viewAll.hidden = NO;
    }
    
    [btnClicked.titleLabel setFont:FONT_HELVETICA_MEDIUM(17.0f)];
}

-(void)clearAllEffects
{
    [self.btnInfo.titleLabel setFont:FONT_HELVETICA_REGULAR(17.0f)];
    [self.btnToday.titleLabel setFont:FONT_HELVETICA_REGULAR(17.0f)];
    [self.btnTomorrow.titleLabel setFont:FONT_HELVETICA_REGULAR(17.0f)];
    [self.btnAll.titleLabel setFont:FONT_HELVETICA_REGULAR(17.0f)];
    
    self.viewInfo.hidden = YES;
    self.viewToday.hidden = YES;
    self.viewTomorrow.hidden = YES;
    self.viewAll.hidden = YES;
}
@end
