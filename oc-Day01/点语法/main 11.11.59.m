//
//  main.m
//  点语法
//
//  Created by DXM on 2022/7/14.
//
/*
 点语法
   对象名.取掉下划线的属性名，
   Person *p1 = [Person new];
 
   p1.name = @"jack";
   p1.age = 18;
   p1.gender = GenderMale;
  
   NSString *name = p1.name;
   
 点语法的原理
  
  p1.age = 18;
  这句话的本质并不是吧18直接复制给p1对象的_age属性
  
  点语法在编译器编译的时候。其实会将点语法转换为调用setter、getter的代码
  
 1）.当使用点语法复制的时候。这个时候编译器会讲点语法转换为调用setter方法的代码
    
    对象名.去掉下划线的属性名 = 数据；
    转换为：
     
      [对象名 set去掉下划线的属性名首字母大写：数据];
      p1.age = 10;
      [p1 setAge:10];
 2).在getter和setter中慎用点语法，因为有可能会造成无限地柜 而程序崩溃，
   
    点语法在编译器编译的时候 会转换为调用setter getter方法的代码。
    
    如果我们的setter方法和getter方法名不符合规范 那么点语法就会出问题。
 
 3）如果属性没有封装getter setter 是无法使用点语法的
    因为点语法的本质是getter setter方法。
    
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
