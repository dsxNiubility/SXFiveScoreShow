//
//  ViewController.m
//  SXFiveScoreShow
//
//  Created by dongshangxian on 15/5/26.
//  Copyright (c) 2015年 Sankuai. All rights reserved.
//

#import "ViewController.h"
#import "SXAnimateVIew.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet SXAnimateVIew *animateView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.animateView.transform = CGAffineTransformMakeScale(0.5, 0.5);
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [UIView animateWithDuration:2.0 animations:^{
        self.animateView.transform = CGAffineTransformIdentity;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
