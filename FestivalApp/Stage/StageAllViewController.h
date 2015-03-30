//
//  StageAllViewController.h
//  FestivalApp
//
//  Created by MyMac on 3/28/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StageAllViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *lbNavigationTitle;

@property (weak, nonatomic) IBOutlet UITableView *tableviewMain;


- (IBAction)onBack:(id)sender;
- (IBAction)onMenu:(id)sender;

@end
