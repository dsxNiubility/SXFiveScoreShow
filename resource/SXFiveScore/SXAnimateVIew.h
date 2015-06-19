//
//  SXAnimateVIew.h
//  SXFiveScoreShow
//
//  Created by dongshangxian on 15/5/26.
//  Copyright (c) 2015年 Sankuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SXAnimateVIew : UIView

@property(nonatomic,assign)CGFloat subScore1;
@property(nonatomic,assign)CGFloat subScore2;
@property(nonatomic,assign)CGFloat subScore3;
@property(nonatomic,assign)CGFloat subScore4;
@property(nonatomic,assign)CGFloat subScore5;

@property(nonatomic,assign)int showType;
@property(nonatomic,strong)UIColor *showColor;
@property(nonatomic,assign)float showWidtn;

@end
