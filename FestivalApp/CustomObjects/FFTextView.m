//
//  FFTextView.m
//  FestivalApp
//
//  Created by My Mac on 3/30/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "FFTextView.h"
#import "SharedManager.h"

@implementation FFTextView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(instancetype)init
{
    if(self=[super init])
    {
        [self initFFTextView];
    }
    
    return self;
}
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        [self initFFTextView];
    }
    return self;
}

-(void)initFFTextView
{
    self.textColor = COLOR_TEXT_SECONDARY;
    self.font = FONT_HELVETICA_REGULAR(14.0f);
    self.backgroundColor = [UIColor clearColor];
    self.scrollEnabled = NO;
    self.editable = NO;
}

-(void)setText:(NSString *)text
{
    [super setText:text];
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, [SharedManager getTextHeight:text width:self.frame.size.width fontSize:14.0f]);
}

@end
