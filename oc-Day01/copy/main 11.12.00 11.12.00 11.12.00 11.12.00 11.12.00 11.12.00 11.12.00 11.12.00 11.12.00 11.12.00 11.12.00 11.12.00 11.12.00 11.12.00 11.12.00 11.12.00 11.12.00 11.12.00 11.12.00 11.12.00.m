//
//  main.m
//  copy
//
//  Created by DXM on 2022/7/19.
//

/*
 无论是MRC还是ARC，@property使用copy
 
 1）。copy是1个方法。定义在NSObject类之中。作用：拷贝对象
     NSString。---》copy--->没有产生新对象，而是直接将对象本身的地址返回。这种拷贝我们叫做浅拷贝
      NSMutableString -->copy -->有产生了一个新对象 --》深拷贝 拷贝出来的是不可变的字符串对象
     NSMutableString *str1 = [NSMutableString stringWithFormat:@"jack"];
     NSMutableString *str2 = [str1 copy];
 
 2）。mutableCopy。定义在NSObject类之中。作用：拷贝对象
  NSString---》mutableCopy-->可变字符串对象。深拷贝
  NSMutableString -->mutableCopy-->可变字符串对象 深拷贝
 
 字符串对象拷贝的引用计数器的问题
  1）。若字符串对象存储在常量区中。存储在常量区的数据是不允许被回收的
       所以存储在常量区的字符串对象的引用计数器是1哥超大的数。并且retain和release无效
  2）。若字符串存储在堆区。这个字符串对象和普通的对象一样的。引用计数器默认是1
  3）。如果是浅拷贝 会将对象的引用计数器+1
      字符串对象如果是深拷贝。原来的对象的引用计数器不变。新拷贝出来的对象的引用计数器为1.
 
  自定义类需要具备对象拷贝的能力，那么就让我们的类遵守NSCoping协议
  并实现copyWithZone这个方法
  1.如果要做深拷贝。就需要重新创建一个对象
  把对象的属性的值 复制到新对象中返回
   Person *p1 = [Person new];
   p1.name = _name;
   p1.age = _age;
   return p1;
   如果想要实现浅拷贝，直接返回self
 
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
