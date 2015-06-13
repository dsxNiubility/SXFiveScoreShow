//
//  SXTableViewController.h
//  SXFiveScoreShow
//
//  Created by dongshangxian on 15/5/27.
//  Copyright (c) 2015年 Sankuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SXUseTableViewController : UITableViewController

/** 各项分数*/
@property(nonatomic,strong)NSArray *scores;
/** 各项分类名称*/
@property(nonatomic,strong)NSArray *labelNames;
/** 各项用来做参照物（对比）的分数*/
@property(nonatomic,strong)NSArray *compareScores;

@end
