//
//  ArtistsAllViewController.h
//  FestivalApp
//
//  Created by MyMac on 3/27/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArtistsAllViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lbNavigationTitle;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITableView *tableviewMain;


- (IBAction)onBack:(id)sender;
- (IBAction)onMenu:(id)sender;

@end
