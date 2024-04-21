//
//  main.m
//  ARC
//
//  Created by DXM on 2022/7/17.
//


/*
 1.ARC机制下，对象何时被释放
   本质：对象的引用计数器为0的时候，自动释放
   表象：只要没有强指针指向这个对象，这个对象就会立即回收。
   
 2.强指针与弱指针。
   强指针：默认情况下，我们声明一个指针 这个指针就是1个强指针。
         我们也可以使用__strong来显示的声明这是1个强指针
         
         Person *p1
         __strong Person *p2;
 
  弱指针：使用__weak标识的指针就叫做弱指针
 
  唯一的区别就是在ARC模式下，他们用来作为回收对象的基准。
 
  3.没有任何强指针指向对象的时候，对象就会被回收
    1）。指向对象的所有强指针被回收掉
    2）。指向对象的所有强指针赋值为nil
 
    在ARC机制下，当对象被回收的时候。原来指向这个对象的弱指针会被自动设置为nil
 
   
 
 
 
 
 
 
 
 
 
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
