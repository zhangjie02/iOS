//
//  MoreViewController1.m
//  baidu
//
//  Created by lee on 14-8-31.
//  Copyright (c) 2014年 lee. All rights reserved.
//

#import "MoreViewController1.h"
#import "SecondViewController.h"

@interface MoreViewController1 ()

@end

@implementation MoreViewController1


@synthesize listData;
@synthesize controllers;
@synthesize _uiTableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)viewDidLoad {
    
    NSArray *array = [[NSArray alloc] initWithObjects:@"公告中心",@"手势密码",@"修改手势密码",@"帮助中心",@"客服热线",@"用户反馈", @"关于",nil];
    self.listData = array;
    
    NSMutableArray *array2 = [[NSMutableArray alloc] init];
    //增加check控制器
	SecondViewController *checkListController = [[SecondViewController alloc] init];
	[array2 addObject:checkListController];
    controllers=array2;

    [self _setExtraCellLineHidden:_uiTableView];
    
    //[self.view setBackgroundColor:[UIColor colorWithRed:220/255.0 green:39/255.0 blue:25/255.0 alpha:1]];
   
    
    [self _initNav];

    [super viewDidLoad];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma 内部方法 start
//设置tableview多于行无分割线
-(void)_setExtraCellLineHidden: (UITableView *)tableView{
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor clearColor];
    [tableView setTableFooterView:view];
}
- (void)_initNav {
    UILabel *customLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    [customLab setTextColor:[UIColor whiteColor]];
    [customLab setText:@"更多"];
    [customLab setTextAlignment:NSTextAlignmentCenter];
    customLab.font = [UIFont boldSystemFontOfSize:18];
    self.navigationItem.titleView = customLab;
}
#pragma 内部方法 end

#pragma implement UITableViewDataSource start
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [listData count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView   cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *SimpleCellIdentifier = @"SimpleCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleCellIdentifier];
    if (cell == nil) {
        if([indexPath row]==4){
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:SimpleCellIdentifier];
            cell.detailTextLabel.text = @"400-898-8855";
        }else{
            
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleCellIdentifier];
        }
    }
    
    NSUInteger row = [indexPath row];
    
    cell.textLabel.text = [listData objectAtIndex:row];
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}
#pragma implement UITableViewDataSource end



#pragma implement UITableViewDelegate start
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	//NSInteger row = [indexPath row];
	UIViewController *nextController = [self.controllers objectAtIndex:0];
	[self.navigationController pushViewController:nextController animated:YES];
}
#pragma implement UITableViewDelegate end
@end
