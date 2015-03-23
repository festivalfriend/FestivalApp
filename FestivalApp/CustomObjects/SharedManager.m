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

