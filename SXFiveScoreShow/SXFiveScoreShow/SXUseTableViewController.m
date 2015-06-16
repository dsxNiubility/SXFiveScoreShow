//
//  SXTableViewController.m
//  SXFiveScoreShow
//
//  Created by dongshangxian on 15/5/27.
//  Copyright (c) 2015年 Sankuai. All rights reserved.
//

#import "SXUseTableViewController.h"
#import "SXFiveScoreCell.h"

@interface SXUseTableViewController ()


@end

@implementation SXUseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        SXFiveScoreCell *cell = [SXFiveScoreCell cell];
        
        cell.scores = self.scores;
        cell.compareScores = self.compareScores;
        cell.labelNames = self.labelNames;
        
        return cell;
    }else if (indexPath.row == 1){
        NSMutableArray *mScoreArray = [self.scores mutableCopy];
        [mScoreArray removeLastObject];
        NSMutableArray *mCompareArray = [self.compareScores mutableCopy];
        [mCompareArray removeLastObject];
        
        SXFiveScoreCell *cell = [SXFiveScoreCell cell];
        
        cell.scores = mScoreArray;
        cell.compareScores = mCompareArray;
        cell.labelNames = self.labelNames;
        
        return cell;
        
    }else if (indexPath.row == 2){
        NSMutableArray *mScoreArray = [self.scores mutableCopy];
        [mScoreArray removeLastObject];
        [mScoreArray removeLastObject];
        NSMutableArray *mCompareArray = [self.compareScores mutableCopy];
        [mCompareArray removeLastObject];
        [mCompareArray removeLastObject];
        
        SXFiveScoreCell *cell = [SXFiveScoreCell cell];
        
        cell.scores = mScoreArray;
        cell.compareScores = mCompareArray;
        cell.labelNames = self.labelNames;
        
        return cell;
    }
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 230;
}


@end
