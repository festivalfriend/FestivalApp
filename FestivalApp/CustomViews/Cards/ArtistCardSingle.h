//
//  ArtistCardSingle.h
//  FestivalApp
//
//  Created by My Mac on 4/3/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArtistCardSingle : UIView

@property(nonatomic,strong) UIImageView *imgArtistPhoto;
@property(nonatomic,strong) UILabel *lbArtistTitle;
@property(nonatomic,strong) UILabel *lbStageName;
@property(nonatomic,strong) UILabel *lbDuration;

@property (nonatomic,strong) UIButton *btnLocation;
@property (nonatomic,strong) UIButton *btnAddCancel;

@property(nonatomic) BOOL isGuid;

@property(nonatomic,strong) UIView *viewContainer;

@end
