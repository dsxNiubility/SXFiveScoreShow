//
//  SXFiveScoreCell.m
//  SXFiveScoreShow
//
//  Created by dongshangxian on 15/5/27.
//  Copyright (c) 2015年 Sankuai. All rights reserved.
//

#import "SXFiveScoreCell.h"
#import "SXBgView.h"
#import "SXAnimateVIew.h"

@interface SXFiveScoreCell ()

@property (weak, nonatomic) IBOutlet SXBgView *compareScoreView;
@property (weak, nonatomic) IBOutlet SXAnimateVIew *scoreView;


@end
@implementation SXFiveScoreCell

- (void)awakeFromNib {
    // Initialization code
    self.scoreView.transform = CGAffineTransformMakeScale(0.5, 0.5);
}

+ (instancetype)cell{
    
   return [[NSBundle mainBundle]loadNibNamed:@"SXFiveScoreCell" owner:nil options:nil][0];
    
}



- (void)setScores:(NSArray *)scores
{
    _scores = scores;
    self.scoreView.subScore1 = [scores[0] floatValue];
    self.scoreView.subScore2 = [scores[1] floatValue];
    self.scoreView.subScore3 = [scores[2] floatValue];
    self.scoreView.subScore4 = [scores[3] floatValue];
    self.scoreView.subScore5 = [scores[4] floatValue];
    
}
- (void)setCompareScores:(NSArray *)compareScores
{
    _compareScores = compareScores;
    self.compareScoreView.subScore1 = [compareScores[0] floatValue];
    self.compareScoreView.subScore2 = [compareScores[1] floatValue];
    self.compareScoreView.subScore3 = [compareScores[2] floatValue];
    self.compareScoreView.subScore4 = [compareScores[3] floatValue];
    self.compareScoreView.subScore5 = [compareScores[4] floatValue];
    
    
}
- (void)setLabelNames:(NSArray *)labelNames
{
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [UIView animateWithDuration:2.0 animations:^{
        self.scoreView.transform = CGAffineTransformIdentity;
    }];
}

@end
