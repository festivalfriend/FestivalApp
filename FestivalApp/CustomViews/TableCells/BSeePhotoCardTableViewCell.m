//
//  BSeePhotoCardTableViewCell.m
//  FestivalApp
//
//  Created by MyMac on 21/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BSeePhotoCardTableViewCell.h"

@implementation BSeePhotoCardTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    [self drawRoundRectwithShadow:self.m_contentView];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)drawRoundRectwithShadow : (UIView *)m_view
{
    [m_view.layer setCornerRadius:3.0f];
    [m_view.layer setShadowColor:[UIColor grayColor].CGColor];
    [m_view.layer setShadowOpacity:0.5];
    [m_view.layer setShadowRadius:1.0];
    [m_view.layer setShadowOffset:CGSizeMake(0, 1.0)];
    
    self.m_ImageView.clipsToBounds = YES;
}

@end
