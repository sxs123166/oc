//
//  main.m
//  动态类型和静态类型
//
//  Created by DXM on 2022/7/15.
//
/*
 1.OC是一门弱语言
   编译器在编译的时候。编译器检查的时候没有那么严格
   不管如何写都可以
   int num = 12.12;
   
 强类型的语言：编译器在编译的时候 做语法检查的时候 行就是行 不行就是不行
 
 2.静态类型：指的是1个指针指向的对象是1个本类对象
   动态类型：指的是1个指针对象不是本类对象
 
 3.编译检查
  
   编译器在编译的时候，能不能通过1个指针去调用指针指向的对象的方法。
   判断原则：看指针所属的类型之中是否有这个方法，如果有就认为可以调用 编译通过。
           如果这个类中没有 那么编译报错
  这个叫编译检查
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
