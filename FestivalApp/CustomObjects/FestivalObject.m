//
//  FestivalObject.m
//  FestivalApp
//
//  Created by MyMac on 21/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "FestivalObject.h"

@implementation FestivalObject

@synthesize m_festivalID = _m_festivalID;
@synthesize m_mainTitle = _m_mainTitle;
@synthesize m_duration = _m_duration;
@synthesize m_contents = _m_contents;
@synthesize m_category = _m_category;
@synthesize m_imageURL = _m_imageURL;
@synthesize m_userCnt = _m_userCnt;
@synthesize b_tickets = _b_tickets;
@synthesize b_guide = _b_guide;
@synthesize b_myFestival = _b_myFestival;

-(instancetype)init
{
    self = [super init];
    if(self)
    {
        self.m_festivalID = -1;
        self.m_userCnt = 0;
        self.m_mainTitle = @"";
        self.m_duration = @"";
        self.m_contents = @"";
        self.m_category = @"";
        self.m_imageURL = @"";
        self.b_tickets = NO;
        self.b_guide = NO;
        self.b_myFestival = NO;
    }
    return self;
}
@end
