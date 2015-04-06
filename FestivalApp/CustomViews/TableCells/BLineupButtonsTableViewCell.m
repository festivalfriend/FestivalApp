//
//  BLineupButtonsTableViewCell.m
//  FestivalApp
//
//  Created by MyMac on 18/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BLineupButtonsTableViewCell.h"
#import "SharedManager.h"


@implementation BLineupButtonsTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    self.backgroundColor = COLOR_BACKGROUND_VIEW;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
