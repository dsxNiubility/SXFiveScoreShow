//
//  SXTableViewController.m
//  SXFiveScoreShow
//
//  Created by dongshangxian on 15/5/27.
//  Copyright (c) 2015年 Sankuai. All rights reserved.
//

#import "SXUseTableViewController.h"
#import "SXFiveScoreCell.h"
#import "SXAnimateVIew.h"

@interface SXUseTableViewController ()

@property(nonatomic,strong)SXAnimateVIew *animateView1;
@property(nonatomic,strong)SXAnimateVIew *animateView2;
@property(nonatomic,strong)SXAnimateVIew *animateView3;

@end

@implementation SXUseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"三种维度展示";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [UIView animateWithDuration:1.5 animations:^{
        self.animateView1.transform = CGAffineTransformIdentity;
        self.animateView2.transform = CGAffineTransformIdentity;
        self.animateView3.transform = CGAffineTransformIdentity;
    }];
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
        self.animateView1 = cell.scoreView;
        
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
        self.animateView2 = cell.scoreView;
        
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
        self.animateView3 = cell.scoreView;
        
        return cell;
    }
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
}


@end
