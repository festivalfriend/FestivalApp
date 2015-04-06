//
//  StageMainViewController.h
//  FestivalApp
//
//  Created by MyMac on 3/27/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StageMainViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lbStageName;

@property (weak, nonatomic) IBOutlet UIButton *btnInfo;
@property (weak, nonatomic) IBOutlet UIButton *btnToday;
@property (weak, nonatomic) IBOutlet UIButton *btnTomorrow;
@property (weak, nonatomic) IBOutlet UIButton *btnAll;
@property (weak, nonatomic) IBOutlet UIView *viewInfo;
@property (weak, nonatomic) IBOutlet UIView *viewToday;
@property (weak, nonatomic) IBOutlet UIView *viewTomorrow;
@property (weak, nonatomic) IBOutlet UIView *viewAll;

@property (weak, nonatomic) IBOutlet UITableView *tableviewMain;

@property (nonatomic)NSInteger curTabIndex;

- (IBAction)onClickDayMenu:(id)sender;
- (IBAction)onBack:(id)sender;
- (IBAction)onMenu:(id)sender;


@end
