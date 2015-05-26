//
//  SXAnimateVIew.m
//  SXFiveScoreShow
//
//  Created by dongshangxian on 15/5/26.
//  Copyright (c) 2015年 Sankuai. All rights reserved.
//

#import "SXAnimateVIew.h"

@implementation SXAnimateVIew

//CGContextMoveToPoint(ctx, 100.25, 0);
//CGContextAddLineToPoint(ctx, 4.75, 69);
//CGContextAddLineToPoint(ctx, 41.25, 180.5);
//CGContextAddLineToPoint(ctx, 158.25, 180.5);
//CGContextAddLineToPoint(ctx, 194.25, 69);
//CGContextAddLineToPoint(ctx, 100.25, 0);

- (void)awakeFromNib
{
    self.subScore1 = 4.9;
    self.subScore2 = 4.5;
    self.subScore3 = 4.7;
    self.subScore4 = 3.5;
    self.subScore5 = 4.7;
}

- (void)drawRect:(CGRect)rect {
    
    float x1,y1,x2,y2,x3,y3,x4,y4,x5,y5;
    
    x1 = 100.25;
    y1 = 100 - 100 * (self.subScore1 / 5.0);
    
    x2 = 100.25 - (100.25 - 4.75) * (self.subScore2 / 5.0);
    y2 = 100 - (100-69) * (self.subScore2 / 5.0);
    
    x3 = 100.25 - (100.25 - 41.25) * (self.subScore3 / 5.0);
    y3 = 100 + (180.5 - 100) * (self.subScore3 / 5.0);
    
    x4 = 100.25 + (158.25 - 100.25) * (self.subScore4 / 5.0);
    y4 = 100 + (180.5 - 100) * (self.subScore4 / 5.0);
    
    x5 = 100.25 + (194.75 - 100.25) * (self.subScore5 / 5.0);
    y5 = 100 - (100 - 69) * (self.subScore5 / 5.0);
    
    
    
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //-----------------------------------------画线段
    CGContextMoveToPoint(ctx, x1, y1);
    CGContextAddLineToPoint(ctx, x2, y2);
    CGContextAddLineToPoint(ctx, x3, y3);
    CGContextAddLineToPoint(ctx, x4, y4);
    CGContextAddLineToPoint(ctx, x5, y5);
    CGContextAddLineToPoint(ctx, x1, y1);
    
    
    CGContextSetLineWidth(ctx, 10);
    CGContextSetLineCap(ctx, kCGLineCapRound);
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    CGContextSetRGBFillColor(ctx, 1, 0, 0, 0.5);
    CGContextFillPath(ctx);
}


@end
