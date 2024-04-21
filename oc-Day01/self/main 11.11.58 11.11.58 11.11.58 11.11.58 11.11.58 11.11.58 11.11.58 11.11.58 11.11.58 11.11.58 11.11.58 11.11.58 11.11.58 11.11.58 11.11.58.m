//
//  main.m
//  self
//
//  Created by DXM on 2022/7/13.
//

/*
  self：自己的
  和java、c#中的this关键字有相似之处
 
 可以在对象那个方法和类方法中使用/
 self是1个指针。在对象方法中self指向当前对象。在类方法中self指向当前类。
 
 self用在对象方法中。
   1）。self在对象方法中，指向当前对象
       当前对象：谁调用方法谁就是当前对象。
       self->name
       [self method]
 
 %p是对象
 
 在类方法中 self也是1个指针。执行当前这个类在代码段中的地址
 self 在类方法中 就相当于是当前这个类。
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
