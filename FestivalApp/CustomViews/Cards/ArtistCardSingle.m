//
//  ArtistCardSingle.m
//  FestivalApp
//
//  Created by My Mac on 4/3/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "ArtistCardSingle.h"
#import "SharedManager.h"

@implementation ArtistCardSingle
@synthesize imgArtistPhoto = _imgArtistPhoto;
@synthesize lbArtistTitle = _lbArtistTitle;
@synthesize lbStageName = _lbStageName;
@synthesize lbDuration = _lbDuration;
@synthesize btnAddCancel = _btnAddCancel;
@synthesize btnLocation = _btnLocation;
@synthesize isGuid = _isGuid;

@synthesize viewContainer = _viewContainer;

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)init
{
    if (self = [super init]) {
        
        CGRect frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 82);
        
        self = [self initWithFrame:frame];
    }
    
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self initCommon];
    }
    
    return self;
}

-(void)initCommon
{
    self.imgArtistPhoto = [[UIImageView alloc] init];
    self.lbArtistTitle = [[UILabel alloc] init];
    self.lbStageName = [[UILabel alloc] init];
    self.lbDuration = [[UILabel alloc] init];
    
    self.lbArtistTitle.font = FONT_HELVETICA_MEDIUM(18.0f);
    self.lbStageName.font = FONT_HELVETICA_LIGHT(14.0f);
    self.lbDuration.font = FONT_HELVETICA_LIGHT(14.0f);
    
    self.lbStageName.textColor = COLOR_TEXT_SECONDARY;
    self.lbDuration.textColor = COLOR_TEXT_SECONDARY;
    self.lbStageName.textColor = COLOR_TEXT_SECONDARY;
    
    
    self.btnLocation = [[UIButton alloc] init];
    self.btnAddCancel = [[UIButton alloc] init];
    
    [self.btnLocation setImage:[UIImage imageNamed:@"icon_location"] forState:UIControlStateNormal];
    [self.btnAddCancel setImage:[UIImage imageNamed:@"icon_cancel_green"] forState:UIControlStateNormal];
    
    self.viewContainer = [[UIView alloc] initWithFrame:CGRectMake(10, 10, self.frame.size.width-20, self.frame.size.height-10)];
    self.viewContainer.backgroundColor = [UIColor whiteColor];
    

}

-(void)setViewAsMyLineup
{
//    float lineHegiht = frame.size.height/3;
    
}
-(void)setViewAsBuyGuid
{
    CGRect frame = self.viewContainer.frame;
    float curXPos;
    curXPos = 10;

    [self.imgArtistPhoto setFrame:CGRectMake((frame.size.height-50)/2, curXPos, 50, 50)];
    [self.imgArtistPhoto.layer setCornerRadius:25];
    self.imgArtistPhoto.layer.masksToBounds = YES;
    curXPos+=self.imgArtistPhoto.frame.size.width+10;
    
    
    [self.lbArtistTitle setFrame:CGRectMake(curXPos, (frame.size.height-30)/2, frame.size.width-curXPos-10, 30)];
    
    [self.viewContainer addSubview:self.imgArtistPhoto];
    [self.viewContainer addSubview:self.lbArtistTitle];
    
    [self addSubview:self.viewContainer];
    
}
-(void)setIsGuid:(BOOL)isGuid
{
    [self setViewAsBuyGuid];
}

@end
