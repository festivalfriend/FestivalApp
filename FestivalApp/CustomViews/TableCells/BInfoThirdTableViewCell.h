//
//  BInfoThirdTableViewCell.h
//  FestivalApp
//
//  Created by MyMac on 13/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BInfoThirdTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIButton *m_btnTickets;
@property (weak, nonatomic) IBOutlet UIButton *m_btnGuide;
@property (weak, nonatomic) IBOutlet UILabel *m_lblTickets;
@property (weak, nonatomic) IBOutlet UILabel *m_lblGuide;
@property (weak, nonatomic) IBOutlet UIImageView *m_imgTicketsStatus;
@property (weak, nonatomic) IBOutlet UIImageView *m_imgGuideStatus;

@end
