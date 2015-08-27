//
//  SXFiveScoreCell.h
//  SXFiveScoreShow
//
//  Created by dongshangxian on 15/5/27.
//  Copyright (c) 2015年 Sankuai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SXAnimateVIew.h"

@class SXAnimateVIew;
@interface SXFiveScoreCell : UITableViewCell

/** 各项分数*/
@property(nonatomic,strong)NSArray *scores;
/** 各项分类名称*/
@property(nonatomic,strong)NSArray *labelNames;
/** 各项用来做参照物（对比）的分数*/
@property(nonatomic,strong)NSArray *compareScores;
/** 是否采用满分100的计分制*/
@property(nonatomic,assign,getter=isHundredScore)BOOL hundredScore;

@property (weak, nonatomic) IBOutlet SXAnimateVIew *compareScoreView;
@property (weak, nonatomic) IBOutlet SXAnimateVIew *scoreView;

+ (instancetype)cell;

@end
