//
//  ArtistListTableViewCell.m
//  FestivalApp
//
//  Created by MyMac on 3/28/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "ArtistListTableViewCell.h"
#import "SharedManager.h"

@implementation ArtistListTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    UIView *separatorView = [[UIView alloc] initWithFrame:CGRectMake(10, self.frame.size.height-1, [UIScreen mainScreen].bounds.size.width-20, 1)];
    separatorView.backgroundColor = COLOR_DIVIDER;
    [self addSubview:separatorView];

    self.backgroundColor = COLOR_BACKGROUND_VIEW;
    self.lbArtistName.textColor = COLOR_TEXT_SECONDARY;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)layoutSubviews
{
    self.imgViewArtist.layer.cornerRadius = self.imgViewArtist.layer.frame.size.width/2;
}

@end
