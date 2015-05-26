//
//  SXAnimateVIew.m
//  SXFiveScoreShow
//
//  Created by dongshangxian on 15/5/26.
//  Copyright (c) 2015年 Sankuai. All rights reserved.
//

#import "SXAnimateVIew.h"

@implementation SXAnimateVIew



- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //-----------------------------------------画线段
    CGContextMoveToPoint(ctx, 100.25, 0);
    CGContextAddLineToPoint(ctx, 4.75, 69);
    CGContextAddLineToPoint(ctx, 41.25, 180.5);
    CGContextAddLineToPoint(ctx, 158.25, 180.5);
    CGContextAddLineToPoint(ctx, 194.25, 69);
    CGContextAddLineToPoint(ctx, 100.25, 0);
    
    
    CGContextSetLineWidth(ctx, 10); // 宽度
    CGContextSetLineCap(ctx, kCGLineCapRound); // 头尾样式
    CGContextSetLineJoin(ctx, kCGLineJoinRound); // 转折点样式
    CGContextSetRGBFillColor(ctx, 1, 0, 0, 1); // 颜色
    CGContextFillPath(ctx); // 渲染
}


@end
