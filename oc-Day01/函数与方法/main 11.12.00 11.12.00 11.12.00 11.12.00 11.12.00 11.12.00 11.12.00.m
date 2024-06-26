//
//  main.m
//  函数与方法
//
//  Created by DXM on 2022/7/12.
//

/*
 函数与方法
 相同点：
      都是用来封装一段代码的。将一段代码封装在其中，表示一个相对独立的功能
      函数或者方法只要被调用。那么封装在其中的代码就会被自动执行。
 不同点：
      1.语法不同。
       函数
       返回值类型 函数名（参数列表）
       方法
       - （返回值类型）方法名称：（参数类型）形参名称1 ：（参数类型）参数名称2 ：（参数类型）参数名称3；

      2.定义位置不同
      3.调用方式不同
      4.方法是属于类的。
 
 注意点：
      1.@interface是类的声明，@implementation是类的实现 他们之间不能相互嵌套
      2.类必须先声明然后再实现
      3.类的声明和实现必须要有
      4.类的声明必须放在使用类的前面，实现必须放在使用类的后面
      5.声明类的时候，类的声明和实现必须要同时存在
        特殊情况下可以直邮实现。没有声明
      6.属性名一定要以下滑线开头
      7.属性不允许声明时初始化
        在为类写一个属性的时候 不允许在声明属性时为属性赋值
      8.OC方法必须要创建对象通过对象名来调用
      9.方法只有声明 没有实现
        a.如果方法只有声明 没有实现 编译器会给1个警告 不会报错
        b.如果指针指向的对象 有方法的声明 而没有方法的实现 那么这个时候通过指针来调用这个方法
          在运行的时候。就会报错
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
