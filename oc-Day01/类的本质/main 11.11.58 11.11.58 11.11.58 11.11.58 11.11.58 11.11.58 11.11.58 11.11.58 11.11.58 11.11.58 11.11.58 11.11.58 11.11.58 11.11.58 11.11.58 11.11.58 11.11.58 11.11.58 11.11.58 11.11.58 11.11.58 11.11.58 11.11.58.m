//
//  main.m
//  类的本质
//
//  Created by DXM on 2022/7/14.
//

/*
 1.内存中的五大区域。
 
 堆
 栈
 BSS段
 数据段
 代码段
 
 代码段：是用来存储代码的。
 类加载。当类第1次被访问的时候 这个类就会被加载到代码段存储起来。
 
 1）类什么时候加载到代码段。
    类第一次被访问的时候，类就会被加载到代码段存储 类加载
 
 
 2）类以什么样的形式加载到代码段
   
 
 3）类一旦被加载到代码段之后 什么时候回收
   是不会被回收的 除非程序结束
 
 3.类是以什么样的形式存储在代码段的
   1）任何存储在内存中的数据都有一个数据类型
      int num = 12;
      float 12.12f
      'a'
     任何在内存中申请的空间也有自己的类型
     Person *p1 = [Person new]
 
    2)在代码段存储类的那块空间是个什么类型的。
      在代码段中存储类的步骤
      a.现在代码段中创建一个Class对象，Class是Foundation框架中的1个类。这个Class对象就是用来存储类信息的
      b.将类的信息存储在Class对象之中。
        
         这个Class对象。至少有3个属性
         类名：存储这个类的名称
         属性s：存储的这个类具有哪些属性
         方法s：存储的这个类具有哪些方法
 
    所有。类是以Class对象的形式存储在代码段的
 
   所以存储类的类对象也有1个叫做isa指针的属性 这个指针指向存储父类的类对象。
 
 4.如何拿到存储在代码段中的类对象
   1）。调用类的类方法 class就可以得到存储类的类对象的地址。
   
   2）。调用对象的对象方法 class 就可以得到存储这个对象所属的类的Class对象的地址。
 
   3).对象中的isa指针的值其实就是代码段中存储类的类对象的地址。
  
   注意：
       声明Class指针的时候 不需要加* 因为在typedef的时候已经加了*了。
 
 5.如何使用类对象
   1）。拿到存储类的类对象以后。
       Class c1 = [Person class];
       c1对象就是Person类
       c1完全等价于Person
   2）。使用类对象来调用类的类方法
       因为类对象就代表存储在这个类对象中类
       Class  c1 = [Person class];
       c1就代表Person类。
       所以在使用Person的地方完全可以使用c1代替。
       
       比如我们使用类名来调用类方法。
       [Person sayHi]
       完全可以使用c1来调用。因为c1就是person
       [c1 sayHi];
   3) 可以使用类对象来调用new方法 创建存储在类对象中的类的对象
 
      Person *p1 = [Person new];
      Class c1 = [Person class];
      其实创建Person对象 也可以这么做。
      Person *p2 = [c1 new];
  
   4）注意：
     使用类对象 只能调用类的类方法，因为类对象就等价于存在其中的类
     Class c1 = [Person class];
     c1就是Person
 
   可以使用类对象调用类的类方法
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Class c1 = [Person class];
        NSLog(@"c1 = %p",c1);
        //C1指的是存储Person类的类对象
        Person *p1 = [Person new];
        Class c2 = [p1 class];
        NSLog(@"c2 = %p",c2);
        
        
    }
    return 0;
}
