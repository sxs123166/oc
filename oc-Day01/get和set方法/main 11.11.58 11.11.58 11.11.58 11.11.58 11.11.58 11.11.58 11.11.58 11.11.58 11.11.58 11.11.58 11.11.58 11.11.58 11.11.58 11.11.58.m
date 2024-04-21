//
//  main.m
//  get和set方法
//
//  Created by DXM on 2022/7/13.
//
/*
  a.static不能修饰属性，也不能修饰方法
  b.static可以修饰方法中的局部变量
      
      如果方法中的局部变量被static修饰，那么这个变量就会被变成静态变量。
      存储在敞亮去 当方法执行完毕之后 不会回收 下次在执行这个方法的时候 直接使用 而不会再声明了
 
 
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *p1 = [Person new];
        
//        [p1 setAge:18];
//        [p1 getAge];
        
    }
    return 0;
}
