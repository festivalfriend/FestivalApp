//
//  FeaturingDoubleTableViewCell.m
//  FestivalApp
//
//  Created by My Mac on 4/2/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "FeaturingDoubleTableViewCell.h"
#import "SharedManager.h"

@implementation FeaturingDoubleTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.backgroundColor = COLOR_BACKGROUND_VIEW;
    [self drawRoundRectwithShadow:self.viewArtist1];
    [self drawRoundRectwithShadow:self.viewArtist2];
}
-(void)drawRoundRectwithShadow : (UIView *)m_view
{
    [m_view.layer setCornerRadius:3.0f];
    [m_view.layer setShadowColor:[UIColor grayColor].CGColor];
    [m_view.layer setShadowOpacity:0.5];
    [m_view.layer setShadowRadius:1.0];
    [m_view.layer setShadowOffset:CGSizeMake(0, 1.0)];
    m_view.backgroundColor = [UIColor whiteColor];
    
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
