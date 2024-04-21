//
//  main.m
//  MRC程序
//
//  Created by DXM on 2022/7/16.
//
/*
 
 1.Xcode7默认支持ARC开发。
  默认使用的开发方式就是ARC的模式
 
  关闭ARC开启MRC
 
 2.当对象的引用计数器变为0的时候，系统会自动回收对象
   在系统回收对象的时候。会自动调用对象的dealloc方法
   
   重写dealloc方法的规范
   必须要调用父类的dealloc方法。并且要放在最后一句代码
 
 3.测试引用计数器
   1）。新创建一个对象，这个对象的引用计数器的默认值是1
   2）。当对象的引用计数器变为0的时候。对象就会被系统立即回收 并自动调用dealloc方法
   3）。为对象发送retain消息 对象的引用计数器就会加1
 
 4。为对象发送release消息，并不是回收对象，而是让对象的引用计数器-1
    当对象的引用计数器的值变为0的时候，对象才会立即被系统回收
 
    [p1 retain]
    [p1 release]
   
 5.内存管理的重点
   1）什么时候使用retain
      当多一个人使用这个对象的时候，应该先为这个对象发送retain消息
   2）什么时候为对象发送release消息
      当少一个人使用这个对象的时候，应该为这个对象发送一条release消息
 
 6.在ARC机制下，retain release dealloc这些方法无法使用
 
 
 7.内存管理的原则
   1）。有对象的创建就要匹配一个release
 
   2）。retain的次数和release的次数要匹配
 
   3）。谁用谁retain，多一个人使用时菜retain，少。。。release
 
 
 
 
 
 */


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
