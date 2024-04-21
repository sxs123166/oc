//
//  Chinese.m
//  网络
//
//  Created by DXM on 2022/7/26.
//

#import "Chinese.h"
#import "HMPerson.h"
@interface Chinese ()

@end

@implementation Chinese

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *names = @[@"李雷",@"韩梅梅",@"马户"];
    NSLog(@"%@",names);
    
    NSArray *name = @"李雷";
    NSLog(@"%@",name);
    
    HMPerson *person1 = [[HMPerson alloc] init];
    person1.name = @"马户";
    person1.age = 18;
    
    NSLog(@"%@",person1.description);
    
    
    
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
