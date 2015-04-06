//
//  BestivalSeeDetailViewController.h
//  FestivalApp
//
//  Created by MyMac on 25/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BestivalSeeDetailViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *lbNavigationBarTitle;
@property (weak, nonatomic) IBOutlet UITableView *m_mainTableView;

@property (weak, nonatomic) IBOutlet UIButton *btnInfo;
@property (weak, nonatomic) IBOutlet UIButton *btnSee;
@property (weak, nonatomic) IBOutlet UIButton *btnEat;
@property (weak, nonatomic) IBOutlet UIButton *btnDrink;
@property (weak, nonatomic) IBOutlet UIButton *btnBuy;
@property (weak, nonatomic) IBOutlet UIButton *btnFacilities;

@property (weak, nonatomic) IBOutlet UIView *viewInfo;
@property (weak, nonatomic) IBOutlet UIView *viewSee;
@property (weak, nonatomic) IBOutlet UIView *viewEat;
@property (weak, nonatomic) IBOutlet UIView *viewDrink;
@property (weak, nonatomic) IBOutlet UIView *viewBuy;
@property (weak, nonatomic) IBOutlet UIView *viewFacilities;


- (IBAction)onClickCategory:(id)sender;

- (IBAction)onBack:(id)sender;

@property(nonatomic)NSInteger curTabIndex;


@end
