//
//  StageObject.h
//  FestivalApp
//
//  Created by MyMac on 3/20/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StageObject : NSObject

@property (nonatomic,strong) NSString *stageID;
@property (nonatomic,strong) NSString *stageName;
@property (nonatomic,strong) NSString *fieldName;
@property (nonatomic) NSString *duration;
@property (nonatomic,strong) NSString *content;
@property (nonatomic,strong) NSString *festivalID;

@end
