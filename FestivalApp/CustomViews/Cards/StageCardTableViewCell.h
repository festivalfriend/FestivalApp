//
//  StageCardTableViewCell.h
//  FestivalApp
//
//  Created by MyMac on 3/28/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StageCardTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *m_contentView;
@property (weak, nonatomic) IBOutlet UIImageView *imgviewStagePicture;
@property (weak, nonatomic) IBOutlet UILabel *lbStageTitle;
@property (weak, nonatomic) IBOutlet UILabel *lbStageField;
@property (weak, nonatomic) IBOutlet UIButton *btLocation;
- (IBAction)onClickLocation:(id)sender;
@end
