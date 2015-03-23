//
//  BFriendFestivalsTableViewCell.h
//  FestivalApp
//
//  Created by MyMac on 3/18/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BFriendFestivalsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *viewContent;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewFestival;
@property (weak, nonatomic) IBOutlet UILabel *lbFestivalTitle;
@property (weak, nonatomic) IBOutlet UILabel *lbFestivalDuration;
@property (weak, nonatomic) IBOutlet UILabel *lbUserCount;

@end
