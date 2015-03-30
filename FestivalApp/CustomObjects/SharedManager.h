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



@interface SharedManager : NSObject

@property(nonatomic,strong)FestivalObject *curFestival;
@property(nonatomic,strong)NSMutableArray *arrFestivals;
@property(nonatomic,strong)NSMutableArray *arrStages;
@property(nonatomic,strong)NSMutableArray *arrArtists;

+(SharedManager *)SharedManager;    
@end
