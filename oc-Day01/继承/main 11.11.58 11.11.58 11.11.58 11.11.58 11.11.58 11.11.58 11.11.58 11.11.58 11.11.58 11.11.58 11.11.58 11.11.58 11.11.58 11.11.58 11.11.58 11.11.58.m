//
//  main.m
//  继承
//
//  Created by DXM on 2022/7/14.
//

/*
 
 继承语法：
 @interface 类名：父类的名称
 
 @end
 
 一个类只能有一个父类
 
 super关键字
  1）。可以用在类方法和对象方法之中
  2）。在对象方法中可以使用super关键字调用当前对象从父类继承过来的对象方法
  3）。类方法中 super关键字可以滴哦啊用当前类从负累继承过来的类方法
    a。类方法也能被子类继承。父类中的类方法可以使用父类名来调用 也可以使用自类名调用
    b。在自类的类方法中。可以使用super关键字调用父类的类方法
 4）.super只能用来调用父类对象方法或者类方法 不能用来访问属性
 
 
 
 
 
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
