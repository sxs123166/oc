//
//  main.m
//  方法的本质
//
//  Created by DXM on 2022/7/14.
//
/*
  1.SEL 全称叫做 selector选择器
    SEL是1个数据类型。所以要在内存中申请空间存储数据
    SEL其实是1个类。SEL对象是用来存储1个方法的
 
 2.类是以Class对象的形式存储在代码段之中
   类名：存储的这个类的类名。 NSString
   还要将方法存储在类对象之中。如何将方法存储在类对象之中
  
   1）。先创建1个SEL对象
   2）。将方法的信息存储在这个SEL对象之中
   3）。再将这个SEL对象作为类对象的属性。
 
 3.拿到存储方法的SEL对象。
   1）。因为SEL是一个typedef类型的 在自定义的时候已经加*了
       所以 我们在声明SEL指针的时候 不需要加*
   2）。取到存储方法的SEL对象，
       SEL s1 = @selector（方法名）；
    
 4.调用方法的本质
   
   【p1 sayHi];
    内部的原理：
     1）。先拿到存储sayHi方法的SEL对象，也就是拿到存储sayHi方法的SEL数据。SEL消息
 
     2）。将这个SEL消息发送给哦p1对象
    
     3）。这个时候，p1对象接收到这个SEL消息以后 就知道要调用方法
   
     4）。根据这个isa指针找到存储类的类对象
    
     5）。找到这个类以后 在这个类对象中去搜寻是否有和传入的SEL数据相匹配的。
          如果有 就执行  如果没有再找父类 知道NSObject
 
     OC最重要的1个机制：消息机制。
     调用方法的本质其实就是为对象发送SEL消息。
     【p1 sayHi];为p1对象发送一条sayHi消息
 
 5.重点掌握
   1）。方法是以SEL对象的形式存储起来
   2）。如何拿到存储方法的SEL对象
  
 6.手动的为对象发送SEL消息
   1）。先得到方法的SEL数据
   2）。将这个SEL消息发送给p1对象
 
       调用这个对象的方法 将SEL数据发送给对象
       - （id)performSelector:(SEL)aSeclector;
 
   SEL s1 = @selector(sayHi);
   [p1 perdormSelector:s1];
   和[p1 sayHi]结果相同
  
 注意
   1.如果方法有参数，记得方法名带冒号
   2.如果方法有参数，如何传递参数。
   SEL s1 = @selector(eatWithFood:);
   [p1 performSelector:s1 withObject:@"红烧肉" withObject:object2];
 
  3.如果有多个参数
    封装在一个对象中
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
