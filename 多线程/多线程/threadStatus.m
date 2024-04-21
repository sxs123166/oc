//
//  threadStatus.m
//  多线程
//
//  Created by DXM on 2022/7/29.
//
/*
 新建-》就绪《=》运行-》阻塞-〉死亡
                     就绪
 */

#import "threadStatus.h"

@interface threadStatus ()

@end

@implementation threadStatus

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //新建状态
    NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(demo) object:nil];
    
    [thread start];
    
}

-(void)demo{
    for (int i = 0; i<20; i++) {
        NSLog(@"%d",i);
        if(i == 5){
          //阻塞状态
             [NSThread sleepForTimeInterval:3];
        }
        
        if(i == 10) {
            [NSThread exit];
        }
    }
}



@end
