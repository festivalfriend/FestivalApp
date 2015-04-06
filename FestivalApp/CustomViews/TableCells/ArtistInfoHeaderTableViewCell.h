//
//  ArtistInfoHeaderTableViewCell.h
//  FestivalApp
//
//  Created by My Mac on 3/31/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArtistInfoHeaderTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UIImageView *imgViewPhoto;
@property (weak, nonatomic) IBOutlet UILabel *lbTitle;
@property (weak, nonatomic) IBOutlet UILabel *lbDuration;
@property (weak, nonatomic) IBOutlet UIView *viewInfomation;
@property (weak, nonatomic) IBOutlet UIButton *btAddCancel;
@property (weak, nonatomic) IBOutlet UIButton *btLocation;



@end
