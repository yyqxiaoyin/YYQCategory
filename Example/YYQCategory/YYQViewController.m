//
//  YYQViewController.m
//  YYQCategory
//
//  Created by yyqxiaoyin on 10/18/2017.
//  Copyright (c) 2017 yyqxiaoyin. All rights reserved.
//

#import "YYQViewController.h"
#import "YYQCategories.h"
#import "MJRefresh.h"

@interface YYQViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic ,strong) UITableView *tableView;

@end

@implementation YYQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"测试";
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
       
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self.tableView.mj_header endRefreshing];
        });
        
    }];
    
    NSLog(@"%lu",self.tableView.contentInsetAdjustmentBehavior);
    self.tableView.isContentInsetAdjustmentNever = NO;
    NSLog(@"%lu",self.tableView.contentInsetAdjustmentBehavior);
    
    [self.view addSubview:self.tableView];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = @(indexPath.row).stringValue;
    cell.contentView.backgroundColor = ramdomColor;
    return cell;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 30;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
