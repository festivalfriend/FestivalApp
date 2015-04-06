//
//  ArtistDetailViewController.h
//  FestivalApp
//
//  Created by My Mac on 3/31/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArtistDetailViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lbNavigationTitle;
@property (weak, nonatomic) IBOutlet UITableView *tableViewMain;



- (IBAction)onBack:(id)sender;
- (IBAction)onMenu:(id)sender;

@end
