//
//  ArtistCardHalf.m
//  FestivalApp
//
//  Created by My Mac on 4/2/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "ArtistCardHalf.h"
#import "SharedManager.h"

@implementation ArtistCardHalf
@synthesize lbArtistName;
@synthesize lbDuration;
@synthesize lbStageName;

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self commonInit];
    
    return self;
}

-(void)commonInit
{
    CGRect frame = self.frame;
    UIView *container = [[UIView alloc] initWithFrame:CGRectMake(0, 5, frame.size.width, frame.size.height-12)];
    float lineHeight = container.frame.size.height/3;
    
    lbArtistName = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, frame.size.width-20, lineHeight)];
    lbStageName = [[UILabel alloc] initWithFrame:CGRectMake(10, lineHeight, frame.size.width-20, lineHeight)];
    lbDuration = [[UILabel alloc] initWithFrame:CGRectMake(10, lineHeight*2, frame.size.width-20, lineHeight)];
    
    [lbArtistName setText:@"ArtistName"];
    [lbStageName setText:@"StageName"];
    [lbDuration setText:@"Start-End"];
    
    lbArtistName.font = FONT_HELVETICA_MEDIUM(17);
    lbStageName.font = FONT_HELVETICA_REGULAR(14);
    lbDuration.font = FONT_HELVETICA_REGULAR(14);
    
    lbArtistName.textColor = COLOR_STAGE_NEXT;
    lbStageName.textColor = COLOR_TEXT_SECONDARY;
    lbDuration.textColor = COLOR_TEXT_SECONDARY;
    
    
    [container addSubview:lbArtistName];
    [container addSubview:lbStageName];
    [container addSubview:lbDuration];
    [self addSubview:container];
    
    [container setBackgroundColor:[UIColor whiteColor]];
    
    
}

@end
