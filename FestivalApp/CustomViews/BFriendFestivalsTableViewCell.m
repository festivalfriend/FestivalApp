//
//  BFriendFestivalsTableViewCell.m
//  FestivalApp
//
//  Created by MyMac on 3/18/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BFriendFestivalsTableViewCell.h"

@implementation BFriendFestivalsTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    

    // Configure the view for the selected state
}

-(void)layoutSubviews{
    [self drawRoundRectwithShadow:self.viewContent];
}

-(void)drawRoundRectwithShadow : (UIView *)m_view
{
    [m_view.layer setCornerRadius:3.0f];
    [m_view.layer setShadowColor:[UIColor grayColor].CGColor];
    [m_view.layer setShadowOpacity:0.5];
    [m_view.layer setShadowRadius:1.0];
    [m_view.layer setShadowOffset:CGSizeMake(0, 1.0)];
}

@end
