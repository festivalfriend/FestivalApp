//
//  BestivalFriendViewController.h
//  FestivalApp
//
//  Created by MyMac on 11/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BestivalFriendViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lbNavigationBarTitle;
@property (weak, nonatomic) IBOutlet UIScrollView *m_menuScrollView;
@property (weak, nonatomic) IBOutlet UIView *m_menuView;
@property (weak, nonatomic) IBOutlet UITableView *m_mainTableView;



- (IBAction)onClickBack:(id)sender;
- (IBAction)onClickMenu:(id)sender;
- (IBAction)onClickInfo:(id)sender;
- (IBAction)onClickLineup:(id)sender;
- (IBAction)onClickSeeDo:(id)sender;
- (IBAction)onClickMap:(id)sender;
- (IBAction)onClickFriends:(id)sender;

@end
