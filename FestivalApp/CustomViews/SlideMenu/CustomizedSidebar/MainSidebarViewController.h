/*
// RearViewController
*/

#import <UIKit/UIKit.h>

@interface MainSidebarViewController : UIViewController
{
}

@property(nonatomic)NSInteger curMenuIndex;

- (IBAction)onChats:(id)sender;
- (IBAction)onFestivals:(id)sender;
- (IBAction)onFriends:(id)sender;
- (IBAction)onSettings:(id)sender;

@end