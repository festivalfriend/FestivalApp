//
//  ArtistListTableViewCell.h
//  FestivalApp
//
//  Created by MyMac on 3/28/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArtistListTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UIImageView *imgViewArtist;
@property (weak, nonatomic) IBOutlet UILabel *lbArtistName;

@property (weak, nonatomic) IBOutlet UIButton *btnAddCancel;
@end
