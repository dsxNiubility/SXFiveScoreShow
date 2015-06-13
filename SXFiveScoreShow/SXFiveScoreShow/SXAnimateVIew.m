//
//  SXAnimateVIew.m
//  SXFiveScoreShow
//
//  Created by dongshangxian on 15/5/26.
//  Copyright (c) 2015年 Sankuai. All rights reserved.
//

#import "SXAnimateVIew.h"

// ------加入想设置区间为3.8分到5.0分，那你就写1.2
#define baseNum 2.5

@implementation SXAnimateVIew

//CGContextMoveToPoint(ctx, 100.25, 0);
//CGContextAddLineToPoint(ctx, 4.75, 69);
//CGContextAddLineToPoint(ctx, 41.25, 180.5);
//CGContextAddLineToPoint(ctx, 158.25, 180.5);
//CGContextAddLineToPoint(ctx, 194.25, 69);
//CGContextAddLineToPoint(ctx, 100.25, 0);

- (void)awakeFromNib
{
//    self.subScore1 = 4.9;
//    self.subScore2 = 4.8;
//    self.subScore3 = 4.8;
//    self.subScore4 = 4.8;
//    self.subScore5 = 4.7;
    
}

- (void)drawRect:(CGRect)rect {
    
    if (self.subScore5 != 0) {
        float subScore1,subScore2,subScore3,subScore4,subScore5;
        float x1,y1,x2,y2,x3,y3,x4,y4,x5,y5;
        
        // ------之所以再做一次传值，可能是因为设置的权值并不是5.0，但是做处理又不想改到原来的值
        subScore1 = self.subScore5;
        subScore2 = self.subScore1;
        subScore3 = self.subScore2;
        subScore4 = self.subScore3;
        subScore5 = self.subScore4;
        
        // ------再做一次处理，假如分数低于2.5那就算是没分了 不显示该片段了。
        //    if (subScore1 < (5.0-baseNum)) {
        //        subScore1 = (5.0-baseNum);
        //    }
        //    if (subScore2 < (5.0-baseNum)) {
        //        subScore2 = (5.0-baseNum);
        //    }
        //    if (subScore3 < (5.0-baseNum)) {
        //        subScore3 = (5.0-baseNum);
        //    }
        //    if (subScore4 < (5.0-baseNum)) {
        //        subScore4 = (5.0-baseNum);
        //    }
        //    if (subScore5 < (5.0-baseNum)) {
        //        subScore5 = (5.0-baseNum);
        //    }
        
        // ------因为设置了权值这里需要更改下比例
        subScore1 = subScore1-(5.0-baseNum);
        subScore2 = subScore2-(5.0-baseNum);
        subScore3 = subScore3-(5.0-baseNum);
        subScore4 = subScore4-(5.0-baseNum);
        subScore5 = subScore5-(5.0-baseNum);
        
        
        
        x1 = 100.25;
        y1 = 100 - 100 * (subScore1 / baseNum);
        
        x2 = 100.25 - (100.25 - 4.75) * (subScore2 / baseNum);
        y2 = 100 - (100-69) * (subScore2 / baseNum);
        
        x3 = 100.25 - (100.25 - 41.25) * (subScore3 / baseNum);
        y3 = 100 + (180.5 - 100) * (subScore3 / baseNum);
        
        x4 = 100.25 + (158.25 - 100.25) * (subScore4 / baseNum);
        y4 = 100 + (180.5 - 100) * (subScore4 / baseNum);
        
        x5 = 100.25 + (194.75 - 100.25) * (subScore5 / baseNum);
        y5 = 100 - (100 - 69) * (subScore5 / baseNum);
        
        
        
        
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        
        //-----------------------------------------画线段
        CGContextMoveToPoint(ctx, x1, y1);
        CGContextAddLineToPoint(ctx, x2, y2);
        CGContextAddLineToPoint(ctx, x3, y3);
        CGContextAddLineToPoint(ctx, x4, y4);
        CGContextAddLineToPoint(ctx, x5, y5);
        CGContextAddLineToPoint(ctx, x1, y1);
        
        [self showTheFiveScoreWithContext:ctx];
        
    }else if (self.subScore4 != 0){
        float subScore1,subScore2,subScore3,subScore4;
        float x1,y1,x2,y2,x3,y3,x4,y4;
        
        // ------之所以再做一次传值，可能是因为设置的权值并不是5.0，但是做处理又不想改到原来的值
        subScore1 = self.subScore1;
        subScore2 = self.subScore2;
        subScore3 = self.subScore3;
        subScore4 = self.subScore4;
        
        // ------因为设置了权值这里需要更改下比例
        subScore1 = subScore1-(5.0-baseNum);
        subScore2 = subScore2-(5.0-baseNum);
        subScore3 = subScore3-(5.0-baseNum);
        subScore4 = subScore4-(5.0-baseNum);
        
        
        x1 = 100.25;
        y1 = 100 - 100 * (subScore1 / baseNum);
        
        x2 = 100.25 - (100.25 - 0) * (subScore2 / baseNum);
        y2 = 100;
        
        x3 = 100.25;
        y3 = 100 + (200 - 100) * (subScore3 / baseNum);
        
        x4 = 100.25 + (200 - 100.25) * (subScore4 / baseNum);
        y4 = 100;
        
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        
        //-----------------------------------------画线段
        CGContextMoveToPoint(ctx, x1, y1);
        CGContextAddLineToPoint(ctx, x2, y2);
        CGContextAddLineToPoint(ctx, x3, y3);
        CGContextAddLineToPoint(ctx, x4, y4);
        CGContextAddLineToPoint(ctx, x1, y1);
        
        
        [self showTheFiveScoreWithContext:ctx];
        
    }else{
        float subScore1,subScore2,subScore3;
        float x1,y1,x2,y2,x3,y3;
        
        // ------之所以再做一次传值，可能是因为设置的权值并不是5.0，但是做处理又不想改到原来的值
        subScore1 = self.subScore1;
        subScore2 = self.subScore2;
        subScore3 = self.subScore3;
        
        
        // ------因为设置了权值这里需要更改下比例
        subScore1 = subScore1-(5.0-baseNum);
        subScore2 = subScore2-(5.0-baseNum);
        subScore3 = subScore3-(5.0-baseNum);
        
        
        
        x1 = 100.25;
        y1 = 100 - 100 * (subScore1 / baseNum);
        
        x2 = 100.25 - (100.25 - 15) * (subScore2 / baseNum);
        y2 = 100 + (150 - 100) * (subScore2 / baseNum);
        
        x3 = 100.25 + (185 - 100.25) * (subScore3 / baseNum);
        y3 = 100 + (150 - 100) * (subScore3 / baseNum);
        
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        
        //-----------------------------------------画线段
        CGContextMoveToPoint(ctx, x1, y1);
        CGContextAddLineToPoint(ctx, x2, y2);
        CGContextAddLineToPoint(ctx, x3, y3);
        CGContextAddLineToPoint(ctx, x1, y1);
        
        [self showTheFiveScoreWithContext:ctx];
        
    }
    
}

- (void)drawRect2:(CGRect)rect {
    return;
    float subScore1,subScore2,subScore3,subScore4,subScore5;
    float x1,y1,x2,y2,x3,y3,x4,y4,x5,y5;
    
    // ------之所以再做一次传值，可能是因为设置的权值并不是5.0，但是做处理又不想改到原来的值
    subScore1 = self.subScore1;
    subScore2 = self.subScore2;
    subScore3 = self.subScore3;
    subScore4 = self.subScore4;
    subScore5 = self.subScore5;
    
    // ------再做一次处理，假如分数低于2.5那就算是没分了 不显示该片段了。
    //    if (subScore1 < (5.0-baseNum)) {
    //        subScore1 = (5.0-baseNum);
    //    }
    //    if (subScore2 < (5.0-baseNum)) {
    //        subScore2 = (5.0-baseNum);
    //    }
    //    if (subScore3 < (5.0-baseNum)) {
    //        subScore3 = (5.0-baseNum);
    //    }
    //    if (subScore4 < (5.0-baseNum)) {
    //        subScore4 = (5.0-baseNum);
    //    }
    //    if (subScore5 < (5.0-baseNum)) {
    //        subScore5 = (5.0-baseNum);
    //    }
    
    // ------因为设置了权值这里需要更改下比例
    subScore1 = subScore1-(5.0-baseNum);
    subScore2 = subScore2-(5.0-baseNum);
    subScore3 = subScore3-(5.0-baseNum);
    subScore4 = subScore4-(5.0-baseNum);
    subScore5 = subScore5-(5.0-baseNum);
    
    
    
    x1 = 100.25;
    y1 = 100 - 100 * (subScore1 / baseNum);
    
    x2 = 100.25 - (100.25 - 4.75) * (subScore2 / baseNum);
    y2 = 100 - (100-69) * (subScore2 / baseNum);
    
    x3 = 100.25 - (100.25 - 41.25) * (subScore3 / baseNum);
    y3 = 100 + (180.5 - 100) * (subScore3 / baseNum);
    
    x4 = 100.25 + (158.25 - 100.25) * (subScore4 / baseNum);
    y4 = 100 + (180.5 - 100) * (subScore4 / baseNum);
    
    x5 = 100.25 + (194.75 - 100.25) * (subScore5 / baseNum);
    y5 = 100 - (100 - 69) * (subScore5 / baseNum);
    
    
    
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //-----------------------------------------画线段
    CGContextMoveToPoint(ctx, x1, y1);
    CGContextAddLineToPoint(ctx, x2, y2);
    CGContextAddLineToPoint(ctx, x3, y3);
    CGContextAddLineToPoint(ctx, x4, y4);
    CGContextAddLineToPoint(ctx, x5, y5);
    CGContextAddLineToPoint(ctx, x1, y1);
    
    
    CGContextSetLineWidth(ctx, self.showWidtn);
    CGContextSetLineCap(ctx, kCGLineCapRound);
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    
    if (self.showType == 1) {
        CGContextSetFillColorWithColor(ctx, self.showColor.CGColor);
        //    CGContextSetRGBFillColor(ctx, 0.97, 0.5, 0.09, 0.5);
        CGContextFillPath(ctx);
    }else if (self.showType == 2){
        CGContextSetStrokeColorWithColor(ctx, self.showColor.CGColor);
        //    CGContextSetRGBFillColor(ctx, 0.97, 0.5, 0.09, 0.5);
        CGContextStrokePath(ctx);
    }
}

- (void)showTheFiveScoreWithContext:(CGContextRef)ctx
{
    CGContextSetLineWidth(ctx, self.showWidtn);
    CGContextSetLineCap(ctx, kCGLineCapRound);
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    
    if (self.showType == 1) {
        CGContextSetFillColorWithColor(ctx, self.showColor.CGColor);
        //    CGContextSetRGBFillColor(ctx, 0.97, 0.5, 0.09, 0.5);
        CGContextFillPath(ctx);
    }else if (self.showType == 2){
        CGContextSetStrokeColorWithColor(ctx, self.showColor.CGColor);
        //    CGContextSetRGBFillColor(ctx, 0.97, 0.5, 0.09, 0.5);
        CGContextStrokePath(ctx);
    }
}


@end
