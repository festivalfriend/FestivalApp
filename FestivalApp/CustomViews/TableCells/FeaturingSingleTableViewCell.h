//
//  FeaturingSingleTableViewCell.h
//  FestivalApp
//
//  Created by My Mac on 4/2/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeaturingSingleTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *viewContent;
@property (weak, nonatomic) IBOutlet UIView *imgViewUserPhoto;
@property (weak, nonatomic) IBOutlet UILabel *lbArtistTitle;
@end
