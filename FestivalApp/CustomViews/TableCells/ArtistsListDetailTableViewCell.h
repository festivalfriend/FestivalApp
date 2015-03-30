//
//  ArtistsListDetailTableViewCell.h
//  FestivalApp
//
//  Created by MyMac on 3/30/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArtistsListDetailTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgViewPhoto;
@property (weak, nonatomic) IBOutlet UILabel *lbTitle;
@property (weak, nonatomic) IBOutlet UIButton *btLocation;
@property (weak, nonatomic) IBOutlet UIButton *btAddCancel;
@property (weak, nonatomic) IBOutlet UIView *viewContent;
@end
