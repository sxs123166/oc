//
//  HMPerson.m
//  网络
//
//  Created by DXM on 2022/7/26.
//

#import "HMPerson.h"

@interface HMPerson ()

@end

@implementation HMPerson

-(NSString *)description{
    return [NSString stringWithFormat:@"%@{name:%@,age:%d}",[super description],self.name,self.age.intValue];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
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
