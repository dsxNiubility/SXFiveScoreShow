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

@property(nonatomic,assign,getter=isBig)BOOL big;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.animateView.transform = CGAffineTransformMakeScale(0.3, 0.3);
    
    self.big = NO;
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (self.big == NO) {
        [UIView animateWithDuration:2.0 animations:^{
            self.animateView.transform = CGAffineTransformIdentity;
        }];
    }else{
        [UIView animateWithDuration:2.0 animations:^{
            self.animateView.transform = CGAffineTransformMakeScale(0.3, 0.3);
        }];
    }
    self.big = !self.isBig;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)pushClick {
    [self performSegueWithIdentifier:@"fiveScore" sender:nil];
}

@end
