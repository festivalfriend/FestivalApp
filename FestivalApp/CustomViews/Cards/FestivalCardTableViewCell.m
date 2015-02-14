//
//  FestivalCardTableViewCell.m
//  FestivalApp
//
//  Created by MyMac on 07/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "FestivalCardTableViewCell.h"

@implementation FestivalCardTableViewCell

- (void)awakeFromNib {
    // Initialization code
    [self setBackgroundColor:[UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1]];
    
    UIView *separatorLineView = [[UIView alloc] initWithFrame:CGRectMake(0, self.InformationView.frame.size.height-1, [UIScreen mainScreen].bounds.size.width-20, 2)];
    [separatorLineView.layer setBorderWidth:1.0f];
    [separatorLineView.layer setBorderColor:[UIColor colorWithRed:210/255.0f green:210/255.0f blue:210/255.0f alpha:1].CGColor];
    [self.InformationView addSubview:separatorLineView];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
