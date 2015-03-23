//
//  SharedManager.h
//  FestivalApp
//
//  Created by MyMac on 21/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FestivalObject.h"

@interface SharedManager : NSObject


@property(nonatomic,strong)FestivalObject *curFestival;
@property(nonatomic,strong)NSMutableArray *arrFestivals;

+(SharedManager *)SharedManager;
@end
