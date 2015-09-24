//
//  ViewController.m
//  MVC
//
//  Created by shuzhenguo on 15/9/24.
//  Copyright © 2015年 shuzhenguo. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "Mode.h"
@interface ViewController ()
@property (nonatomic, retain) NSMutableArray *dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _dataArr = [[NSMutableArray alloc] initWithCapacity:16];
    
    //构建模型数据
    Mode *modeOne = [[Mode alloc] init];
    modeOne.name = @"md";
    modeOne.home = @"china";
    [_dataArr addObject:modeOne];
    
    Mode *modeTwo = [[Mode alloc] init];
    modeTwo.name = @"xg";
    modeTwo.home = @"china";
    [_dataArr addObject:modeTwo];

    
}
-(void)dealloc
{
    self.dataArr = nil;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // 控制器把模型里面的数据取出来放到视图上面
    Mode *mode = [self.dataArr objectAtIndex:indexPath.row];
    cell.nameLbl.text = mode.name;
    cell.homeLbl.text = mode.home;
    
    
    // Configure the cell...
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
