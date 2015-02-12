//
//  BestivalInfoViewController.h
//  FestivalApp
//
//  Created by MyMac on 10/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BestivalInfoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *m_mainImageView;
@property (weak, nonatomic) IBOutlet UILabel *m_lblFestivalStatus;

@property (weak, nonatomic) IBOutlet UIScrollView *m_menuScrollView;
@property (weak, nonatomic) IBOutlet UIView *m_menuView;
@property (weak, nonatomic) IBOutlet UIScrollView *m_contentScrollView;
@property (weak, nonatomic) IBOutlet UIView *m_contentView;



- (IBAction)onClickBack:(id)sender;
- (IBAction)onClickMenu:(id)sender;
- (IBAction)onClickInfo:(id)sender;
- (IBAction)onClickLineup:(id)sender;
- (IBAction)onClickSeeDo:(id)sender;
- (IBAction)onClickMap:(id)sender;
- (IBAction)onClickFriends:(id)sender;
- (IBAction)onManageFestival:(id)sender;


@end
