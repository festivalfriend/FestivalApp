//
//  BInfoFirstTableViewCell.m
//  FestivalApp
//
//  Created by MyMac on 13/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BInfoFirstTableViewCell.h"

@implementation BInfoFirstTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    
    self.m_mainImageView.layer.masksToBounds = YES;
}

@end
