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
    
    self.arrWeekDays = [[NSMutableArray alloc] initWithObjects:@"Monday", @"Tuesday", @"Wednsday", @"Thursday", @"Friday", @"Saturday", @"Sunday", nil];

    
    //Get Festival Data
    for (NSInteger i=0; i<10; i++) {
        
        FestivalObject *tmpFestival;
        tmpFestival = [[FestivalObject alloc] init];
        tmpFestival.m_festivalID = i;
        tmpFestival.m_mainTitle = [NSString stringWithFormat:@"Festival%ld",(long)i];
        
        NSInteger len = arc4random()%4+1;
        len = (long)pow(10, len);
        tmpFestival.m_userCnt = arc4random()%(len*10);

        
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

-(void)update
{
    for (FestivalObject *festival in self.arrFestivals) {
        if(festival.m_festivalID == self.curFestival.m_festivalID)
        {
            festival.b_guide = self.curFestival.b_guide;
            festival.b_tickets = self.curFestival.b_tickets;
            festival.b_myFestival = self.curFestival.b_myFestival;
            festival.m_userCnt = self.curFestival.m_userCnt;
            
        }
    }
}

+(SharedManager *)SharedManager
{
    if(g_sharedManager==nil)
    {
        g_sharedManager = [[SharedManager alloc] init];
    }
    return g_sharedManager;
}
+(CGFloat)getTextHeight:(NSString*)text width:(float)width fontSize: (float)fontSize
{
    NSDictionary *attributesDictionary = [NSDictionary dictionaryWithObject:FONT_HELVETICA_REGULAR(fontSize) forKey: NSFontAttributeName];
    CGRect frame = [text boundingRectWithSize:CGSizeMake(width, 3000) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin attributes:attributesDictionary context:nil];
    return frame.size.height+20;
}
+(NSInteger)getWeekDayIndex:  (NSDate *)date
{
    NSInteger ret_val;
    
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *comps = [gregorian components:NSWeekdayCalendarUnit fromDate:date];
    ret_val = [comps weekday];
    
    
    
    return ret_val;
}


@end

