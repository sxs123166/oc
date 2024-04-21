//
//  main.m
//  似有属性和私有方法
//
//  Created by DXM on 2022/7/14.
//
/*
 
 在@implementation之中也可以写1个大括弧。
 把属性定义在@implementation的大括弧之中。
 
 这里面的属性。是1个私有属性，各种访问修饰符无效
 外界就不会提示
 
 将属性定义在@implementation之中和将属性定义在@interface之中并标记为@private
 唯一区别：提示和不提示。都不能在外界访问
 
 私有方法：（不用声明，也是在implementation中写） 
  
 方法不写声明，只写实现。那么这个方法就是一个私有方法
 只能在本类的其他方法中调用  不能在外届调用
 
 */


#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1 = [Person new];
        [p1 getAge];
        
    }
    return 0;
}
