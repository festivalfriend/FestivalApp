//
//  BSeeCategoryTableViewCell.m
//  FestivalApp
//
//  Created by MyMac on 21/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BSeeCategoryTableViewCell.h"

@implementation BSeeCategoryTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
}
-(void)layoutSubviews
{
    self.m_contentScrollView.contentSize = self.m_contentView.frame.size;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
