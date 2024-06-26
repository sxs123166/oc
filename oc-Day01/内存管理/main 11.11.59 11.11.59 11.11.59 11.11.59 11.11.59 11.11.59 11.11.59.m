//
//  main.m
//  内存管理
//
//  Created by DXM on 2022/7/16.
//

/*
 内存中的五大区域
   栈：局部变量，当局部变量的作用域被执行完毕之后，这个局部变量就会被系统立即回收
   堆：OC对象，使用C函数申请的空间
   BSS段：未初始化的全局变量、静态变量。一旦初始化就回收 并转存到数据段之中
   数据段：已经初始化的全局变量、静态变量。直到程序结束的时候才会被回收
   代码段：代码，程序结束的时候，系统会自动回收存储在代码段中的数据
    
   栈、BSS段、数据段、代码段存储在他们中的数据的回收，是由系统自动完成的
 
 3.分配在堆区的OC对象，是肯定需要被回收的
   存储在堆中的OC对象，系统不会自动回收，直到程序结束的时候才会被回收
 
 4. 内存管理的范围
    只需要管理存储在堆中的oc对象的回收。其他区域中的数据的回收是系统自动管理的
 
 5.ARC自动引用计数：自动引用计数，自动内存管理
   系统自动的在合适的地方发送retain relase消息
   
 
 
 */


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
