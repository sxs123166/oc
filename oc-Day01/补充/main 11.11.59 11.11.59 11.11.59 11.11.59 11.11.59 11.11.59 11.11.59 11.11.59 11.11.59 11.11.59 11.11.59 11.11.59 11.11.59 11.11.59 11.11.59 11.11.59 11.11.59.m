//
//  main.m
//  补充
//
//  Created by DXM on 2022/7/17.
//



/*
  1. ARC与垃圾回收机制的区别
   
    GC：在程序运行的期间，有1个东西叫垃圾回收器，不断的扫描堆中对象是否无人使用
    ARC：不是运行时。在编译的时候就在合适的地方插入retain
         插入的代码足以让对象无人使用的时候 引用计数器为0
  
 2.
 
  
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
