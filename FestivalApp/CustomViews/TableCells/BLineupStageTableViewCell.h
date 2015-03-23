//
//  BLineupStageTableViewCell.h
//  FestivalApp
//
//  Created by MyMac on 15/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BLineupStageTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *m_lblTitleMain;
@property (weak, nonatomic) IBOutlet UILabel *m_lblTitleLeft;
@property (weak, nonatomic) IBOutlet UILabel *m_lblTimeLeft;
@property (weak, nonatomic) IBOutlet UILabel *m_lblTitleRight;
@property (weak, nonatomic) IBOutlet UILabel *m_lblTimeRight;
@property (weak, nonatomic) IBOutlet UIView *m_viewLeft;
@property (weak, nonatomic) IBOutlet UIView *m_viewRight;

@end
