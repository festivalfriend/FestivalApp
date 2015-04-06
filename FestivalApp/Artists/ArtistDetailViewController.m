//
//  ArtistDetailViewController.m
//  FestivalApp
//
//  Created by My Mac on 3/31/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "ArtistDetailViewController.h"
#import "ArtistInfoHeaderTableViewCell.h"
#import "SWRevealViewController.h"

#import "SharedManager.h"
#import "FFTextView.h"
#import "BInfoFifthTableViewCell.h"

@interface ArtistDetailViewController ()
{
    NSString *strDescription;
}

@end

@implementation ArtistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    strDescription = @"And they say that blogging doesn’t get you anywhere! \n \n Well for one young music obsessed duo it got them residencies at Space and The Warehouse Project, but these two guys are special, these two guys are Bicep. \n Defiant purveyors of vinyl glory and the obscure brilliance to be found in the annals of dance music history; Bicep have swept the globe over the last couple of years, destroying dance floors wherever they set down, completely different from anything else, completely inspiring, completely brilliant.";
    self.tableViewMain.backgroundColor = COLOR_BACKGROUND_VIEW;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UITableViewDelegate, UITableViewDataSource

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==0) {
        return 260;
    }
    else if (indexPath.row == 1)
    {
        return [SharedManager getTextHeight:strDescription width:[UIScreen mainScreen].bounds.size.width-20 fontSize:14.0f];
    }
    return 50;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row==0)
    {
        NSString *cellIdentifier = @"ArtistInfoHeaderTableViewCell";
        
        ArtistInfoHeaderTableViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
        
        return cell;
    }
    else if(indexPath.row==1){
        UITableViewCell *cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [SharedManager getTextHeight:strDescription width:[UIScreen mainScreen].bounds.size.width-20 fontSize:14.0f])];
        
        FFTextView *textView = [[FFTextView alloc] initWithFrame:CGRectMake(10, 0, [UIScreen mainScreen].bounds.size.width-20, cell.frame.size.height)];
        [textView setText:strDescription];
        [cell addSubview:textView];
        cell.backgroundColor = COLOR_BACKGROUND_VIEW;
        
        
        return cell;
    }
    else{
        NSString *cellIdentifier = @"BInfoFifthTableViewCell";
        BInfoFifthTableViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil] objectAtIndex:0];
        cell.backgroundColor = COLOR_BACKGROUND_VIEW;
        
        return cell;
    }
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (IBAction)onBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onMenu:(id)sender {
    
    SWRevealViewController *revealVC = [self revealViewController];
    [revealVC rightRevealToggle:self];

}
@end
