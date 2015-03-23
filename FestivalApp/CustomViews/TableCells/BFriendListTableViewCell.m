//
//  BFriendListTableViewCell.m
//  FestivalApp
//
//  Created by MyMac on 3/18/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BFriendListTableViewCell.h"

@implementation BFriendListTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state

}

-(void)layoutSubviews
{
    self.imgViewUserPhoto.layer.masksToBounds = YES;
    self.imgViewUserPhoto.layer.cornerRadius = self.imgViewUserPhoto.frame.size.width/2;
}

@end
