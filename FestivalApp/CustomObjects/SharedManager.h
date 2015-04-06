//
//  SharedManager.h
//  FestivalApp
//
//  Created by MyMac on 21/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FestivalObject.h"
#import "ArtistsObject.h"
#import "StageObject.h"
#import "common_variables.h"
#import <UIKit/UIKit.h>


@interface SharedManager : NSObject

@property(nonatomic,strong)FestivalObject *curFestival;
@property(nonatomic,strong)NSMutableArray *arrFestivals;
@property(nonatomic,strong)NSMutableArray *arrStages;
@property(nonatomic,strong)NSMutableArray *arrArtists;
@property(nonatomic,strong)NSMutableArray *arrWeekDays;

+(SharedManager *)SharedManager;
-(void)update;

+(CGFloat)getTextHeight:(NSString*)text width:(float)width fontSize: (float)fontSize;
+(NSInteger)getWeekDayIndex : (NSDate *)date;

@end
