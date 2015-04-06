//
//  FeaturingAtistsViewController.h
//  FestivalApp
//
//  Created by My Mac on 4/3/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeaturingArtistsViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lbNavigationbarTitle;

@property (weak, nonatomic) IBOutlet UIButton *btnAll;
@property (weak, nonatomic) IBOutlet UIButton *btnToday;
@property (weak, nonatomic) IBOutlet UIButton *btnTomorrow;
@property (weak, nonatomic) IBOutlet UIButton *btnSunday;
@property (weak, nonatomic) IBOutlet UIView *viewAll;
@property (weak, nonatomic) IBOutlet UIView *viewToday;
@property (weak, nonatomic) IBOutlet UIView *viewTomorrow;
@property (weak, nonatomic) IBOutlet UIView *viewSunday;

@property (weak, nonatomic) IBOutlet UITableView *tableviewMain;

@property (nonatomic)NSInteger curTabIndex;

- (IBAction)onClickDayMenu:(id)sender;
- (IBAction)onBack:(id)sender;
- (IBAction)onMenu:(id)sender;
@end
