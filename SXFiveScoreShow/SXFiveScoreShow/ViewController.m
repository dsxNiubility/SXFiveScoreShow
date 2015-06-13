//
//  ViewController.m
//  SXFiveScoreShow
//
//  Created by dongshangxian on 15/5/26.
//  Copyright (c) 2015年 Sankuai. All rights reserved.
//

#import "ViewController.h"
#import "SXAnimateVIew.h"
#import "SXTableViewController.h"

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SXTableViewController *tbvc = (SXTableViewController *)segue.destinationViewController;
    
    // ------这里数组里的count只能是5.
    // ------暂时只设置了维度为5的图形效果 后续会设置维度3（三角形） 维度4（菱形）的效果
    tbvc.labelNames = @[@"服务态度",@"环境设施",@"视听效果",@"地理位置",@"前台长相"];
    tbvc.scores = @[@4.8,@4.8,@4.8];
    tbvc.compareScores =@[@4.7,@4.7,@4.8];
    
}

@end
