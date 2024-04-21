//
//  NSThread.m
//  多线程
//
//  Created by DXM on 2022/7/29.
//

/*
 多线程执行的原理：
 a.(单核CPU)同一时间，cpu只能处理1个线程，只有一个线程在执行
 b.多线程同时执行：是CPU快速的在多个线程之间切换
 c.cpu调度线程的时间足够快，就造成了多线程的“同时”执行
 d.如果线程数非常多cpu会在n个线程之间切换，消耗大量的cpu资源
    i.每个线程调度的次数会降低，线程执行的效率降低
 
 */


#import "NST.h"

@interface NSThread ()

@end

@implementation NST

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //方式一
    //NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(demo) object:nil];
    //[thread start];
    
    //方式二
    //[NSThread detachNewThreadSelector:@selector(demo) toTarget:self withObject:nil];
    
    //方式三
    //[self performSelectorInBackground:@selector(demo) withObject:nil];
    
    //方式四 参数
    NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(demo:) object:@"笑了"];
    [thread start];
    
}




-(void) demo:(NSString *)name{
    NSLog(@"hello %@,%@",[NSThread currentThread],name);
}



@end
