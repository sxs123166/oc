//
//  Description.m
//  网络
//
//  Created by DXM on 2022/7/27.
//

#import "Description.h"
#import "HMPerson.h"
@interface Description ()

@end

@implementation Description

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    HMPerson *person1 = [[HMPerson alloc] init];
    person1.name = @"马户";
    person1.age = 18;
    
    NSLog(@"%@",person1);
    
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
