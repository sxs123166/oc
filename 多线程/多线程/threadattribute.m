//
//  threadattribute.m
//  多线程
//
//  Created by DXM on 2022/7/29.
//
/*
 线程优先级为分给的时间片的概率大大增加
 */
#import "threadattribute.h"

@interface threadattribute ()

@end

@implementation threadattribute

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSThread *thread1 = [[NSThread alloc] initWithTarget:self selector:@selector(demo) object:nil];
    thread1.name = @"t1";
    
    NSThread *thread2 = [[NSThread alloc] initWithTarget:self selector:@selector(demo) object:nil];
    thread2.name = @"t2";
    
    [thread1 start];
    [thread2 start];
    //线程优先级 threadPriority
}

-(void) demo{
    
    for (int i=0; i<20; i++) {
        NSLog(@"%d,%@",i,[NSThread currentThread]);
    }
    
}



@end
