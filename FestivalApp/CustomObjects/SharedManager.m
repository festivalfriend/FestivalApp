//
//  SharedManager.m
//  FestivalApp
//
//  Created by MyMac on 21/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "SharedManager.h"
static SharedManager *g_sharedManager = nil;
@implementation SharedManager
@synthesize curFestival = _curFestival;
@synthesize arrFestivals = _arrFestivals;

-(instancetype)init
{
    self = [super init];
    if(self)
    {
        [self initSharedManager];
    }
    return self;
}

-(void)initSharedManager
{
    self.curFestival = [[FestivalObject alloc] init];
    self.arrFestivals = [[NSMutableArray alloc] init];
    self.arrStages = [[NSMutableArray alloc] init];
    self.arrArtists = [[NSMutableArray alloc] init];
    

    
    //Get Festival Data
    for (NSInteger i=0; i<10; i++) {
        FestivalObject *tmpFestival;
        tmpFestival = [[FestivalObject alloc] init];
        tmpFestival.m_festivalID = i;
        tmpFestival.m_mainTitle = [NSString stringWithFormat:@"Festival%ld",(long)i];
        tmpFestival.m_userCnt = i;
        tmpFestival.b_myFestival = NO;
        
        if(i%3==1)
        {
            tmpFestival.b_guide = YES;
            tmpFestival.b_tickets = YES;
            tmpFestival.b_myFestival = YES;
        }
        
        [self.arrFestivals addObject:tmpFestival];
    }
    
    
    //Get Artists Data
    
}

+(SharedManager *)SharedManager
{
    if(g_sharedManager==nil)
    {
        g_sharedManager = [[SharedManager alloc] init];
    }
    return g_sharedManager;
}

@end

