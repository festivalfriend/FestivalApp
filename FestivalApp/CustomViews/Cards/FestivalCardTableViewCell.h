//
//  FestivalCardTableViewCell.h
//  FestivalApp
//
//  Created by MyMac on 07/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FestivalCardTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UIImageView *ImageView;
@property (weak, nonatomic) IBOutlet UILabel *TitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *DurationLabel;
@property (weak, nonatomic) IBOutlet UILabel *UserLabel;
@property (weak, nonatomic) IBOutlet UIView *InformationView;
@property (weak, nonatomic) IBOutlet UIView *m_contentView;

@end
