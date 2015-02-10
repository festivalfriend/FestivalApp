//
//  HomeFestivalViewController.h
//  FestivalApp
//
//  Created by MyMac on 06/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeFestivalViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *mainTableView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *m_activityIndicator;
@property (weak, nonatomic) IBOutlet UIButton *m_btnAll;
@property (weak, nonatomic) IBOutlet UIButton *m_btnMyFestival;
@property (weak, nonatomic) IBOutlet UIView *m_whiteViewAll;
@property (weak, nonatomic) IBOutlet UIView *m_whiteViewMyFestivals;


//Variables
@property (nonatomic,strong) NSMutableArray *m_festivalArr;
@property (nonatomic)NSInteger m_curLoadType;



- (IBAction)onGetAllFestivals:(id)sender;
- (IBAction)onGetMyFestivals:(id)sender;
- (IBAction)onSearch:(id)sender;
- (IBAction)onMenu:(id)sender;

@end
