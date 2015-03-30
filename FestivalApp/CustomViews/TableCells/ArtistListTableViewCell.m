//
//  ArtistListTableViewCell.m
//  FestivalApp
//
//  Created by MyMac on 3/28/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "ArtistListTableViewCell.h"

@implementation ArtistListTableViewCell

- (void)awakeFromNib {
    // Initialization code
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
