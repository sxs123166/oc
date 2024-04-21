//
//  main.m
//  单个对象的内存管理
//
//  Created by DXM on 2022/7/17.
//

/*
  1。内存泄漏
    指的是一个对象没有被及时的回收。在该回收的时候没有被回收
    一直驻留在内存中，直到程序结束的时候才回收
 
  2.单个对象的内存泄漏情况
    1）。有对象的创建，而没有相应的release
    2）。retain的次数和release的次数不匹配
    3）。在不适当的时候，为指针赋值为nil
    4）。在方法中为传入的对象进行不适当的retain
 
 3.如何保证单个对象可以被回收
   1）。有对象的创建 就必须要匹配一个release
   2）。retain次数和release次数要匹配
   3）。只有在指针称为野指针的时候才赋值为nil
   4）。在方法中要随意为传入的对象retain
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
