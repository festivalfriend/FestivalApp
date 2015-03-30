//
//  BLineupListTableViewCell.h
//  FestivalApp
//
//  Created by MyMac on 14/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BLineupListTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *m_imgPhoto;
@property (weak, nonatomic) IBOutlet UILabel *m_lblName;
@property (weak, nonatomic) IBOutlet UILabel *m_lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *m_lblTime;
@property (weak, nonatomic) IBOutlet UIButton *m_btnLocation;
@property (weak, nonatomic) IBOutlet UIButton *m_btnCancel;
@property (weak, nonatomic) IBOutlet UIView *m_contentView;



- (IBAction)onClickLocation:(id)sender;
- (IBAction)onClickCancel:(id)sender;

@end
