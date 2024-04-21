//
//  ViewController.m
//  OC-06
//
//  Created by DXM on 2022/7/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGFloat labelWidth = 90;
    CGFloat labelHeight = 20;
    CGFloat labelTopView = 150;
    CGRect frame = CGRectMake((screen.size.width-labelWidth)/2, labelTopView, labelWidth, labelHeight);
    
    UILabel* label = [[UILabel alloc] initWithFrame:frame];
    
    label.text = @"Hello,world";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
//    UINavigationController *
//    self presentingViewController
    // 1. push 2 模态 
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
