//
//  main.m
//  description
//
//  Created by DXM on 2022/7/14.
//
/*
  1. %p 打印的是指针变量的值
     %@ 打印的是指针指向的对象
  2. 如果我们使用%@打印一个对象
     输出的格式： <对象所属的类名：对象的地址>
  3.原理：
     当我们使用%@打印一个对象的时候，NSLog函数底层实现。
     1）。调用传入对象的description方法
     2）。拿到这个方法的返回值 这个返回值是1个字符串
     3）。将这个字符串输出。
 
 4.description方法是定义在NSObject类之中的。
   所以每1个OC对象都有这个方法
 
  这个方法在NSObject类中的实现是这样的：
 
  返回的字符串格式@“<对象所属的类名：对象的地址>”

 5.什么时候需要重写description方法呢
   如果你希望使用%@打印1个对象的时候 你希望这个对象的打印的个数是我们自定义的
 */

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *p1 = [Person new];
        NSLog(@"%@",p1);
    }
    return 0;
}
