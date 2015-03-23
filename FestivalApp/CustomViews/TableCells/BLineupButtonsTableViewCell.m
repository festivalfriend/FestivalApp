//
//  BLineupButtonsTableViewCell.m
//  FestivalApp
//
//  Created by MyMac on 18/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BLineupButtonsTableViewCell.h"

@implementation BLineupButtonsTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    [self.m_btnAllArtists.layer setCornerRadius:3.0f];
    [self.m_btnStages.layer setCornerRadius:3.0f];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)onClickAllArtists:(id)sender {
}

- (IBAction)onClickStages:(id)sender {
}
@end
