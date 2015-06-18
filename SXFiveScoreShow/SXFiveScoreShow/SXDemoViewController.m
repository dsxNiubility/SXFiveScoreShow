//
//  ViewController.m
//  SXFiveScoreShow
//
//  Created by dongshangxian on 15/5/26.
//  Copyright (c) 2015年 Sankuai. All rights reserved.
//

#import "SXDemoViewController.h"
#import "SXAnimateVIew.h"
#import "SXUseTableViewController.h"

@interface SXDemoViewController ()
@property (weak, nonatomic) IBOutlet SXAnimateVIew *animateView;
@property (weak, nonatomic) IBOutlet SXAnimateVIew *compareView;
@property (weak, nonatomic) IBOutlet SXAnimateVIew *animateView2;
@property (weak, nonatomic) IBOutlet SXAnimateVIew *compareView2;
@property (weak, nonatomic) IBOutlet UIButton *curryView;
@property (weak, nonatomic) IBOutlet UIButton *davisView;
@property (weak, nonatomic) IBOutlet UIButton *xierdunView;
@property (weak, nonatomic) IBOutlet UIButton *xianggelilaView;

@property (weak, nonatomic) IBOutlet UITextField *scoreLabel1;
@property (weak, nonatomic) IBOutlet UITextField *scoreLabel2;
@property (weak, nonatomic) IBOutlet UITextField *scoreLabel3;
@property (weak, nonatomic) IBOutlet UITextField *scoreLabel4;
@property (weak, nonatomic) IBOutlet UITextField *scoreLabel5;

@property (weak, nonatomic) IBOutlet UITextField *compareLabel1;
@property (weak, nonatomic) IBOutlet UITextField *compareLabel2;
@property (weak, nonatomic) IBOutlet UITextField *compareLabel3;
@property (weak, nonatomic) IBOutlet UITextField *compareLabel4;
@property (weak, nonatomic) IBOutlet UITextField *compareLabel5;

@property(nonatomic,assign,getter=isBig)BOOL big;
@property(nonatomic,assign,getter=isBig2)BOOL big2;

@end

@implementation SXDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.animateView.transform = CGAffineTransformMakeScale(0.3, 0.3);
    self.big = YES;
    self.big2 = YES;
    
    self.curryView.layer.borderColor = [UIColor orangeColor].CGColor;
    self.curryView.layer.borderWidth = 3;
    self.curryView.layer.cornerRadius = 35;
    self.curryView.layer.masksToBounds = YES;
    
    self.davisView.layer.borderColor = [UIColor colorWithRed:31/255.0 green:187/255.0 blue:170/255.0 alpha:1].CGColor;
    self.davisView.layer.borderWidth = 3;
    self.davisView.layer.cornerRadius = 35;
    self.davisView.layer.masksToBounds = YES;
    
    self.xierdunView.layer.borderColor = [UIColor orangeColor].CGColor;
    self.xierdunView.layer.borderWidth = 3;
    self.xierdunView.layer.cornerRadius = 35;
    self.xierdunView.layer.masksToBounds = YES;
    
    self.xianggelilaView.layer.borderColor = [UIColor colorWithRed:31/255.0 green:187/255.0 blue:170/255.0 alpha:1].CGColor;
    self.xianggelilaView.layer.borderWidth = 3;
    self.xianggelilaView.layer.cornerRadius = 35;
    self.xianggelilaView.layer.masksToBounds = YES;
    
    
    self.animateView.subScore1 = 5;
    self.animateView.subScore2 = 5;
    self.animateView.subScore3 = 4.0;
    self.animateView.subScore4 = 3.0;
    self.animateView.subScore5 = 4.8;
    
    self.animateView.showType = 1;
    self.animateView.showColor = [UIColor colorWithRed:0.97 green:0.5 blue:0.09 alpha:0.8];
    //    self.scoreView.showColor = [UIColor orangeColor];
    self.animateView.showWidtn = 1;
    
    self.compareView.subScore1 = 4.0;
    self.compareView.subScore2 = 3.0;
    self.compareView.subScore3 = 5;
    self.compareView.subScore4 = 5;
    self.compareView.subScore5 = 3.0;
    
    self.compareView.showType = 1;
    self.compareView.showColor = [UIColor colorWithRed:0.18 green:0.74 blue:0.65 alpha:0.8];
    //    self.compareScoreView.showColor = [UIColor greenColor];
    self.compareView.showWidtn = 1;
    
    self.animateView2.subScore1 = 3.5;
    self.animateView2.subScore2 = 3.5;
    self.animateView2.subScore3 = 4.9;
    self.animateView2.subScore4 = 3.5;
    self.animateView2.subScore5 = 3.5;
    
    self.animateView2.showType = 1;
    self.animateView2.showColor = [UIColor colorWithRed:0.97 green:0.5 blue:0.09 alpha:0.8];
    //    self.scoreView.showColor = [UIColor orangeColor];
    self.animateView2.showWidtn = 1;
    
    self.compareView2.subScore1 = 4.1;
    self.compareView2.subScore2 = 4.1;
    self.compareView2.subScore3 = 3.5;
    self.compareView2.subScore4 = 4.1;
    self.compareView2.subScore5 = 4.1;
    
    self.compareView2.showType = 2;
    self.compareView2.showColor = [UIColor colorWithRed:0.18 green:0.74 blue:0.65 alpha:0.8];
    //    self.compareScoreView.showColor = [UIColor greenColor];
    self.compareView2.showWidtn = 2;
    
    
}
- (IBAction)leftClick:(UIButton *)sender {
    if (self.big == NO) {
        [UIView animateWithDuration:0.7 animations:^{
            self.animateView.transform = CGAffineTransformIdentity;
        }];
    }else{
        [UIView animateWithDuration:0.7 animations:^{
            self.animateView.transform = CGAffineTransformMakeScale(0.3, 0.3);
        }];
    }
    self.big = !self.isBig;
}
- (IBAction)rightClick:(UIButton *)sender {
    if (self.big2 == NO) {
        [UIView animateWithDuration:0.7 animations:^{
            self.compareView.transform = CGAffineTransformIdentity;
        }];
    }else{
        [UIView animateWithDuration:0.7 animations:^{
            self.compareView.transform = CGAffineTransformMakeScale(0.3, 0.3);
        }];
    }
    self.big2 = !self.isBig2;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
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
    SXUseTableViewController *tbvc = (SXUseTableViewController *)segue.destinationViewController;
    
    // ------这里数组里的count只能是5.
    // ------暂时只设置了维度为5的图形效果 后续会设置维度3（三角形） 维度4（菱形）的效果
//    tbvc.labelNames = @[@"服务态度",@"环境设施",@"视听效果",@"地理位置",@"前台长相"];
    tbvc.scores = @[@([self.scoreLabel1.text floatValue]),@([self.scoreLabel2.text floatValue]),@([self.scoreLabel3.text floatValue]),@([self.scoreLabel4.text floatValue]),@([self.scoreLabel5.text floatValue])];
    tbvc.compareScores =@[@([self.compareLabel1.text floatValue]),@([self.compareLabel2.text floatValue]),@([self.compareLabel3.text floatValue]),@([self.compareLabel4.text floatValue]),@([self.compareLabel5.text floatValue])];
    
}

@end
