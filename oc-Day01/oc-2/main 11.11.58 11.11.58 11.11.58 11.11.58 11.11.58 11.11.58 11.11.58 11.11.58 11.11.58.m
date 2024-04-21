//
//  main.m
//  oc-2
//
//  Created by DXM on 2022/7/11.
//

//编译过程
// a.预处理
// b。检查语法
// c。编译
// d。链接

//链接成功以后 就会生成一个a.out可执行文件 执行就可以了

// 3。 oc程序和c程序各个阶段的后缀名对比
//源文件  目标文件 可执行文件
// .c     .o     .out
// .m     .o      .out

// oc中的数据类型
/*
 1.支持c语言中所有的数据类型
   a.基本数据类型 int double float char
   b.构造类型 数组 结构体 枚举
   c.指针类型 int *p1
   d.空类型 void
   e.typedef自定义类型
 2.BOOL类型
   1）可以存储YES或者NO中的任意一个数据
   2）一般情况下BOOL类型的变量用来存储条件表达式的结果。如果表达式成立 那么结果就是YES（实际上就是1） 表达式结果不成立 结果就是 NO（实际上就是0）
 3.Boolean
   变量为true和false
 4.class类型。类
 5.id类型 万能指针
 6.SEL 方法选择器
 8.block代码段
 
 
 */


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
