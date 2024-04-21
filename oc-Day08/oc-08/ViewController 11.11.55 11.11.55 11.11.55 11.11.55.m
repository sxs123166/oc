//
//  ViewController.m
//  oc-08
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
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGFloat labelWidth = 90;
    CGFloat labelHeight = 20;
    CGFloat labelTopView = 150;
    CGRect frame = CGRectMake((screen.size.width-labelWidth)/2, labelTopView, labelWidth, labelHeight);
    
    UILabel* label = [[UILabel alloc] initWithFrame:frame];
    
    label.text = @"Hello,world";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    
    
}


@end
