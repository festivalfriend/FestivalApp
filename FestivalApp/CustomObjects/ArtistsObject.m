//
//  ArtistsObject.m
//  FestivalApp
//
//  Created by MyMac on 3/20/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "ArtistsObject.h"

@implementation ArtistsObject
@synthesize artistID;
@synthesize artistName;
@synthesize artistPhotoURL;


-(instancetype)init
{
    self = [super init];
    if(!self)
    {
        artistID = @"";
        artistName = @"";
        artistPhotoURL = @"";
    }
    return self;
}

@end
