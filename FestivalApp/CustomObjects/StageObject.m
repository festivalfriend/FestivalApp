//
//  StageObject.m
//  FestivalApp
//
//  Created by MyMac on 3/20/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "StageObject.h"

@implementation StageObject
@synthesize stageID;
@synthesize stageName;
@synthesize fieldName;
@synthesize duration;
@synthesize content;
@synthesize festivalID;

-(instancetype)init
{
    
    self = [super init];
    
    if(!self)
    {
        stageID = @"";
        stageName = @"";
        fieldName = @"";
        duration = @"";
        content = @"";
        festivalID = @"";
    }
    return self;
}

@end


