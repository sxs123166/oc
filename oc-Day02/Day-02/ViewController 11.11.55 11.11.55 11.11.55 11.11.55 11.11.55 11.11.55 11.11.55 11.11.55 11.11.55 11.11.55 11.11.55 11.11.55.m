//
//  ViewController.m
//  Day-02
//
//  Created by DXM on 2022/7/20.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *contentLabel = [[UILabel alloc]initWithFrame:CGRectMake(100,200, 150, 30)];
    contentLabel.text = @"更多更多更多更多更多更多更多更多更多更多更多更多更多更多更多";
    contentLabel.lineBreakMode =   NSLineBreakByWordWrapping;
    
    [self.view addSubview:contentLabel];
}


@end
