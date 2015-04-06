//
//  BLineupStageTableViewCell.m
//  FestivalApp
//
//  Created by MyMac on 15/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BLineupStageTableViewCell.h"
#import "SharedManager.h"

@implementation BLineupStageTableViewCell

- (void)awakeFromNib {
    // Initialization code

    [self drawRoundRectwithShadow:self.m_viewLeft];
    [self drawRoundRectwithShadow:self.m_viewRight];
    
}
-(void)drawRoundRectwithShadow : (UIView *)m_view
{
    [m_view.layer setCornerRadius:3.0f];
    [m_view.layer setShadowColor:[UIColor grayColor].CGColor];
    [m_view.layer setShadowOpacity:0.5];
    [m_view.layer setShadowRadius:1.0];
    [m_view.layer setShadowOffset:CGSizeMake(0, 1.0)];
    
    self.backgroundColor = COLOR_BACKGROUND_VIEW;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
