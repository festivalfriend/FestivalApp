
/*

 
*/

#import "MainSidebarViewController.h"

#import "SWRevealViewController.h"

#import "SearchFestivalViewController.h"
#import "ChatsMainViewController.h"
#import "FriendsMainViewController.h"
#import "SettingsMainViewController.h"
#import "HomeFestivalViewController.h"


@implementation MainSidebarViewController



#pragma mark - View lifecycle


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.title = NSLocalizedString(@"Rear View", nil);
    self.curMenuIndex = 1;
}

-(void)onClickMenus:(NSInteger) mIndex
{
    SWRevealViewController *revealController = self.revealViewController;

    if( self.curMenuIndex==mIndex)
    {
        [revealController setFrontViewPosition:FrontViewPositionLeft animated:YES];
        return;
    }
    UIViewController *newFrontController = nil;
    switch (mIndex) {
        case 0:
            newFrontController = [[ChatsMainViewController alloc] init];
            break;
        case 1:
            newFrontController = [[HomeFestivalViewController alloc] init];
            break;
        case 2:
            newFrontController = [[FriendsMainViewController alloc] init];
            break;
        case 3:
            newFrontController = [[SettingsMainViewController alloc] init];
            break;
        default:
            newFrontController = [[HomeFestivalViewController alloc] init];
            break;
    }
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:newFrontController];
    navigationController.navigationBarHidden = YES;
    [revealController pushFrontViewController:navigationController animated:YES];

    self.curMenuIndex = mIndex;
}


- (IBAction)onChats:(id)sender
{
    
    [self onClickMenus:0];
    return;
}
- (IBAction)onFestivals:(id)sender
{
    [self onClickMenus:1];
    return;
}
- (IBAction)onFriends:(id)sender
{
    [self onClickMenus:2];
    return;
    
}
- (IBAction)onSettings:(id)sender
{
    [self onClickMenus:3];
    return;
}

@end