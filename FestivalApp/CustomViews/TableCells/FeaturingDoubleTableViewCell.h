//
//  FeaturingDoubleTableViewCell.h
//  FestivalApp
//
//  Created by My Mac on 4/2/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeaturingDoubleTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *viewArtist1;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewArtist1;
@property (weak, nonatomic) IBOutlet UILabel *lbArtistTitle1;

@property (weak, nonatomic) IBOutlet UIView *viewArtist2;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewArtist2;
@property (weak, nonatomic) IBOutlet UILabel *lbArtistTitle2;
@end
