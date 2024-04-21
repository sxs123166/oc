//
//  Share.m
//  多线程
//
//  Created by DXM on 2022/8/7.
//
/*
  多线程访问共享资源
   1.共享资源
      1块共享资源可能会被多个线程共享，也就是多个线程可能会访问同一块资源。
    
 */

#import "Share.h"

@interface Share ()

@property(nonatomic, assign) int ticket;

@end

@implementation Share

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _ticket = 10;
    NSThread *t1 = [[NSThread alloc] initWithTarget:self selector:@selector(sellTickets) object:nil];
    t1.name = @"t1";
    
    NSThread *t2 = [[NSThread alloc] initWithTarget:self selector:@selector(sellTickets) object:nil];
    t2.name = @"t2";
    
    [t1 start];
    [t2 start];
    
    
}


- (void) sellTickets{
    while (true) {
    
        @synchronized (self) {
            [NSThread sleepForTimeInterval:3];
            if(_ticket > 0){
        
                _ticket -= 1;
                NSLog(@"当前剩余票数%d",_ticket);
        }else{
        
            NSLog(@"票已卖完");
            
        }
            
        }
        
    }
    
}

@end
