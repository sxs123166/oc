//
//  main.m
//  @synthesize
//
//  Created by DXM on 2022/7/15.
//
/*
 @synthesize
  1)作用：自动生成getter、setter方法的实现
    所以，应该写在类的实现之中
 
  2）。语法：
      @synthesize  @property
      @interface Person : NSObject
      {
         int _age;
      }
      @property int age;
      @end
      -----------
      @implementation Person
     
      @synthesize age;
      @end
      
 3).@synthesize做的事情
    a.生成一个真私有的属性。属性的类型和@synthesize对应的@property类型一致
    属性的名字和@synthesize对应的@property名字一致
 
   b.自动生成setter方法的实现
     将参数直接复制给自动生成的那个私有属性，并没有做任何的逻辑验证
 
   c.自动生成getter方法的实现。
     将生成的私有属性返回

 3.希望@synthesize不要自动生成私有属性
   语法：
       @synthesize age = _age;
       @synthesize@property名称 = 已经存在的属性名；
       1).不会再去生成私有属性
 
       2）.直接生成setter、getter的实现
          setter的实现：把参数的值直接赋值给指定的属性
          getter的实现：直接返回指定的属性值
 4。可以连续写
    synthesize name = _name,age = _age,weight = _weight,height = _height;
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
