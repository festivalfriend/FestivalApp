//
//  ArtistsListDetailTableViewCell.m
//  FestivalApp
//
//  Created by MyMac on 3/30/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "ArtistsListDetailTableViewCell.h"

@implementation ArtistsListDetailTableViewCell

- (void)awakeFromNib {
    // Initialization code
    [self drawRoundRectwithShadow:self.viewContent];
    self.backgroundColor = [UIColor colorWithRed:242/255.0f green:242/255.0f blue:242/255.0f alpha:1.0f];
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)drawRoundRectwithShadow : (UIView *)m_view
{
    [m_view.layer setCornerRadius:3.0f];
    [m_view.layer setShadowColor:[UIColor grayColor].CGColor];
    [m_view.layer setShadowOpacity:0.7];
    [m_view.layer setShadowRadius:1.0];
    [m_view.layer setShadowOffset:CGSizeMake(0, 1.0)];
    
}

@end
