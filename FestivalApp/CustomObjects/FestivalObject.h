//
//  FestivalObject.h
//  FestivalApp
//
//  Created by MyMac on 21/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FestivalObject : NSObject

@property (nonatomic) NSInteger m_festivalID;
@property (nonatomic) NSInteger m_userCnt;
@property (nonatomic,strong) NSString *m_mainTitle;
@property (nonatomic,strong) NSString *m_duration;
@property (nonatomic,strong) NSString *m_contents;
@property (nonatomic,strong) NSString *m_category;
@property (nonatomic,strong) NSString *m_imageURL;
@property (nonatomic) BOOL b_tickets;
@property (nonatomic) BOOL b_guide;
@property (nonatomic) BOOL b_myFestival;

@end
