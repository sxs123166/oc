//
//  main.m
//  类方法
//
//  Created by DXM on 2022/7/13.
//

/*
 
 类方法声明使用+号
 +（返回值类型）方法名；
 
 与对象方法的声明实现出了+和- 其他都是一样的
 [类名 类方法名】
 
 类方法不能直接访问属性
 1）。属性是在对象创建的时候，跟随对象一起创建在对象之中
 2）。类第一次被访问的时候，会做类加载。是把类的代码存储在代码段
 
 属性只有在对象创建的时候才会创建在对象之中
 而类方法在执行的时候。有可能还没有对象。
 
 在类方法中也不能通过self直接调用当前类的其他的的对象方法
 因为对象方法只能通过对象来调用 而这个时候没有对象
 
 对象方法中可调用类方法
 
 如果我们写一个类，那么就要求为这个类提供一个和雷同名的类方法
 这个方法创建一个最纯洁的对象返回
 
 如果你希望创建的对象的属性的值有调用者指定 那么就为这个类方法带参数
 类名WithXXX：。。。。。。
 */

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
}

+(Person *)personWithName:(NSString *)name andAge:(int)age;

@end

@implementation Person

+(Person *)personWithName:(NSString *)name andAge:(int)age
{
    Person *p1 = [Person new];
    p1->_name = name;
    p1->_age = age;
    return p1;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *p3 = [Person personWithName:@"jack" andAge:19];
    }
    return 0;
}
