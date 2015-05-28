//
//  SXFiveScoreCell.m
//  SXFiveScoreShow
//
//  Created by dongshangxian on 15/5/27.
//  Copyright (c) 2015年 Sankuai. All rights reserved.
//

#import "SXFiveScoreCell.h"

@implementation SXFiveScoreCell

- (void)awakeFromNib {
    // Initialization code
}

+ (instancetype)cell{
    
   return [[NSBundle mainBundle]loadNibNamed:@"SXFiveScoreCell" owner:nil options:nil][0];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
