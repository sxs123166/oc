//
//  main.m
//  动态类型检测
//
//  Created by DXM on 2022/7/16.
//

/*
  我们就希望，我们可以写代码先来判断一下。对象中是否有这个方法可以执行
  1）判断指针指向的对象中是否有这个方法可以执行
    BOOL b1 =  [p1 respondsToSelector:@selector(length)];
    有就返回YES
 
    判断类中是否有指定的类方法
    +（BOOL）instancesRespondToSelector:(SEL)aSlector;
  
 
 
  2）。判断指定的对象是否为  指定类的对象或者子类对象
      -（BOOL）isKindOfClass:[Person class]];
      判断s1对象是否为Person对象或者Person的子类对象
 
  3）判断对象是否为指定类的对象 不包括子类
     -（BOOL)isMemerOfClass:(Class)aClass
     [s1 isMemberOfClass:[student class]];
 
  4)判断类是否为另外一个类的子类
    +（BOOL)isSubclassOfClass:(Class)aclass;
 
     
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
