//
//  BestivalInfoViewController.m
//  FestivalApp
//
//  Created by MyMac on 10/02/15.
//  Copyright (c) 2015 MyMac. All rights reserved.
//

#import "BestivalInfoViewController.h"

@interface BestivalInfoViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation BestivalInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
 
    [self.view setBackgroundColor:[UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1]];
    [self.m_mainTableView setBackgroundColor:[UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1]];
    self.m_mainTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
//    CGRect newFrame = CGRectMake(0, 0, 300, 400);
//    self.m_contentView.frame = newFrame;
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

- (IBAction)onClickBack:(id)sender {
}

- (IBAction)onClickMenu:(id)sender {
}

- (IBAction)onClickInfo:(id)sender {
}

- (IBAction)onClickLineup:(id)sender {
}

- (IBAction)onClickSeeDo:(id)sender {
}

- (IBAction)onClickMap:(id)sender {
}

- (IBAction)onClickFriends:(id)sender {
}

- (IBAction)onManageFestival:(id)sender {
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    [cell setBackgroundColor:[UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1]];
    
    CGRect frame = [tableView rectForRowAtIndexPath:indexPath];
    
    UIView *cellContentView = [[UIView alloc] initWithFrame:CGRectMake(0, 10, frame.size.width, frame.size.height-10)];
    [cell addSubview:cellContentView];
//    UIView *separateLineView = [[UIView alloc] initWithFrame:CGRectMake(0, frame.size.height-1, frame.size.width, 2)];
//    [separateLineView.layer setBorderColor:[UIColor colorWithRed:210/255.0f green:210/255.0f blue:210/255.0f alpha:1.0f].CGColor];
//    [separateLineView.layer setBorderWidth:2.0f];
//    [cell addSubview:separateLineView];
    
    
    if(indexPath.row == 0)
    {
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.frame = CGRectMake(0, 0, cellContentView.frame.size.width, cellContentView.frame.size.height);
        [imageView setImage: [UIImage imageNamed: @"bestival_photo1"]];
        [cellContentView addSubview: imageView];
    }
    else if(indexPath.row == 1)
    {
        
        [cellContentView setBackgroundColor:[UIColor colorWithRed:143/255.0f green:195/255.0f blue:105/255.0f alpha:1.0f]];
        UILabel *lblStatus = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, cellContentView.frame.size.width-60, cellContentView.frame.size.height)];
        [lblStatus setText:@"My Festivals"];
        [lblStatus setTextAlignment:NSTextAlignmentCenter];
        
        UIButton *btnAction = [UIButton buttonWithType:UIButtonTypeSystem];
        [btnAction setFrame:CGRectMake(0, cellContentView.frame.size.width-60, 40, 40)];
        
        [cellContentView addSubview:lblStatus];
        [cellContentView addSubview:btnAction];
        
    }
    else if(indexPath.row == 2)
    {

    }
    else if(indexPath.row == 3)
    {
        UITextView *textView = [[UITextView alloc] init];
        
    }
    else return nil;


    return cell;

}

-(float)getTextHeight:(NSString*)string fontSize:(float)fontSize width:(float)textviewWidth
{
    return 0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    float h_height=0;
    
    switch (indexPath.row) {
        case 0:
            h_height = 168+10;
            break;
        case 1:
            h_height = 44+10;
            break;
        case 2:
            h_height = 100+10;
            break;
        case 3:
            h_height = 30+10;
            break;
        default:
            break;
    }
    
    return h_height;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

@end
