//
//  BSeePhotoCardTableViewCell.h
//  FestivalApp
//
//  Created by MyMac on 21/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSeePhotoCardTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *m_contentView;
@property (weak, nonatomic) IBOutlet UIImageView *m_ImageView;
@property (weak, nonatomic) IBOutlet UILabel *m_lblTitle;
@end
