//
//  BuyGuidTableViewCell.m
//  FestivalApp
//
//  Created by My Mac on 4/2/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BuyGuidTableViewCell.h"
#import "SharedManager.h"

@implementation BuyGuidTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    self.viewContent.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.1];
    self.backgroundColor = COLOR_BACKGROUND_VIEW;
    
    [self.lbContent setFont:FONT_HELVETICA_LIGHT(17.0f)];
    [self.lbContent setTextColor:COLOR_TEXT_SECONDARY];
    [self.btnBuy.titleLabel setTextColor:COLOR_STAGE_NEXT];
    [self.btnBuy setTintColor:COLOR_STAGE_NEXT];
    [self.btnBuy setTitle:@"Guide - £0.99" forState:UIControlStateNormal];
    [self.btnBuy.titleLabel setFont:FONT_HELVETICA_REGULAR(17.0f)];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
