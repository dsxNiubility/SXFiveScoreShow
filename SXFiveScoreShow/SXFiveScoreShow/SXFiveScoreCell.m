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
}

+ (instancetype)cell{
    
   return [[NSBundle mainBundle]loadNibNamed:@"SXFiveScoreCell" owner:nil options:nil][0];
    
}




@end
