//
//  BLineupListTableViewCell.m
//  FestivalApp
//
//  Created by MyMac on 14/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BLineupListTableViewCell.h"
#import "SharedManager.h"

@implementation BLineupListTableViewCell

- (void)awakeFromNib {
    // Initialization code

    [self drawRoundRectwithShadow:self.m_contentView];
}
-(void)drawRoundRectwithShadow : (UIView *)m_view
{
    [m_view.layer setCornerRadius:3.0f];
    [m_view.layer setShadowColor:[UIColor grayColor].CGColor];
    [m_view.layer setShadowOpacity:0.5];
    [m_view.layer setShadowRadius:1.0];
    [m_view.layer setShadowOffset:CGSizeMake(0, 1.0)];
    m_view.backgroundColor = [UIColor whiteColor];
    
    self.backgroundColor = COLOR_BACKGROUND_VIEW;
}

-(void)layoutSubviews
{
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)onClickLocation:(id)sender {
    NSLog(@"Location Button Clicked. This is implemented on TableViewCell");
}

- (IBAction)onClickCancel:(id)sender {
    NSLog(@"Cancel Button Clicked. This is implemented on TableViewCell");
}
@end
