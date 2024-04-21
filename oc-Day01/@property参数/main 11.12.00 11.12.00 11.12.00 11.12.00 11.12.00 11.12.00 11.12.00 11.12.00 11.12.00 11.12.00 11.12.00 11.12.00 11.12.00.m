//
//  main.m
//  @property参数
//
//  Created by DXM on 2022/7/17.
//
/*
 1.在MRC开发模式下。1个类的属性如果是1个OC对象类型的。那么这个属性的setter方法就应该按照下面的格式写。
   -（void)setCar:(Car *)car
   {
      if(_car != car)
         {
           [_car release];
           _car = [car retain];
          }
  }
   还要重写dealloc方法
   -（void)dealloc
   {
     [_car release];
     [super elloc];
   }
   
   如果属性的类型不是OC对象类型的
 
 2.@property
   1)作用
      a.自动生成私有属性
      b.自动生成私有属性的getter setter方法的实现
      c.自动生成getter setter方法的声明
 
 3.@property参数
   1）。@property是可以带参数的
       @property(参数1，参数2，参数3，。。。。）数据类型 名称
 
   2）。介绍一下@property的四组参数
       a.与多线程相关的两个参数 atomic  nonatomic
       b.与生成的setter方法实现相关的参数
       ssign、retain
   3）与生成只读、读写相关的参数
      readonly readwrite
 
    4)是与生成的getter、setter方法名字相关的参数 setter getter
 
  4.介绍与多线程相关的参数
    
     atomic:默认值(加锁）
     nonatomic:（不加锁，但是效率高）
     @property （nonatomic) Car *car;
 
  5.与生成的setter方法实现的相关的参数。
    assign：默认值 生成的setter方法实现就是直接赋值
    retain：生成的setter方法的实现就是标准的MRC内存管理代码。
            也就是。先判断新旧对象是否为同一个对象。如果不是release旧的  retain新的
  
   当属性的类型是OC对象的类型的时候，就使用retain
   当属性的类型是非OC对象的时候，使用assign
 
    注意：retain参数。只是生成标准的setter方法为标准的MRC内存管理代码  不会自动的在dealloc中生成release的代码
    所以，我们还要自己手动的在dealloc中release
     声明中
      @property（nonatomic,retain)Car *car;
   
    实现中
     -（void)dealloc
     {
         [_car release];
         [super dealloc];
      }
 
 
  6.与生成只读、读写的封装
    readwrite:默认值。代表同时生成getter、setter
    readonly:只会生成getter 不会生成setter
    
  7.生成getter、setter方法名称相关的参数
    默认情况下。@property生成的getter setter方法都是 最标准的名字
    我们可以通过参数来指定@property生成的方法的名字
    @property(nonatomic,assign,getter==xxx) int age;
    
    getter = getter方法名字 用来指定@property生成的getter方法的名字
    setter = setter方法名字。 用来指定@property生成的setter方法的名字。注意，setter方法是带参数的 所以要加一个冒号。
 
    记住：如果使用getter、setter修改了生成的方法的名字
         点语法会使用修改名字的代码
 
   顺序可以随意
    
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
