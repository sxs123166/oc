//
//  main.m
//  nil和null
//
//  Created by DXM on 2022/7/11.
//
/*
 1.NULL
   可以作为指针变量的值。如果1个指针变量的值是NULL值代表。代表着个指针不知心啊个内存中的任何1块空间
   NULL其实等价于  null其实是1个宏，就是0
 
 2.nil
   只能作为指针变量的值。代表着个指针变量不指向内存中的任何空间
   nil其实也等价于0 null其实是1个宏，就是0.
 
   所以，null和nil其实是一样的
 
3。使用建议
 虽然使用null的地方可以时nil 使用nil的地方可以时使用null 但是不建议随便使用
 c指针用NULL
    int *p1 = NULL；p1指针不指向内存中的任何一块空间。
 oc的类指针用nil
    Person *p1 = nil; p1指针不指向任何对象。
    比如 int *p1 = nil; Person *p2 = NULL;
 
 如果1个类指针的值为nil。代表着个指针不指向任何对象
 Person *p1 = nil;
 那么这个时候 如果通过p1指针去访问p1指针指向的对象的属性 这个时候会运行报错
 如果通过p1指针去调用对象的方法。运行不会报错 但是方法你不会执行 没有任何反应
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
