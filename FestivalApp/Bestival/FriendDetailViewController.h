//
//  FriendDetailViewController.h
//  FestivalApp
//
//  Created by MyMac on 3/18/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FriendDetailViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *lbUserName;


@property (weak, nonatomic) IBOutlet UIImageView *imgViewUserPhoto;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewMyStatus;
@property (weak, nonatomic) IBOutlet UILabel *lbMyStatus;

- (IBAction)onBack:(id)sender;
- (IBAction)onAddChat:(id)sender;

@end
