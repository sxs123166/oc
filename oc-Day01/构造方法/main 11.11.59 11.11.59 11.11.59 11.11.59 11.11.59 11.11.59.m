//
//  main.m
//  构造方法
//
//  Created by DXM on 2022/7/16.
//

/*
  1.创建对象，我们之前说：
    类名 *指针名 = [类名 new]
    news实际上是一个类方法
    
    new方法的作用：
    -》创建对象
    -〉初始化对象
    -》把对象的地址返回
   
   new方法的内部，其实是先调用的alloc方法。在调用的init方法
   alloc方法是1个类方法作用：那一个类调用这个方法 就创建那个对象 并把对象返回
   init方法是一个对象方法 作用是初始化对象
 
   创建对象的完整步骤：
   应该是先使用alloc创建一个对象，然后在使用init初始化这个对象 才可以使用这个对象
   虽然没有初始化的对象有的时候也可以使用，但千万不要这么做
   使用一个未经初始化的对象是极其危险的
  
 2.init方法
   作用：初始化对象为对象的属性赋初始值 这个init方法我们叫做构造方法
   init方法做的事情：初始化对象
   为对象的属性赋默认值 如
   基本数据类型：赋值为0
   C指针：  NULL
   OC指针：nil
 所以 我们创建这个对象如果没有为这个对象的属性赋初值 这个对象的属性是有默认值的
 
 Person *p1 = [Person new];
 Person *p2 = [[Person alloc] init]
 
 3.我们想要创建的对象的属性的默认值不是 nil NULL 0
  而是我们自定义的
  那么这个时候，我们就可以重写init方法。在这个方法中按照我们的想法为对象的属性赋值
  
  重写init方法的规范：
   1）。必须要先调用父类的init方法。然后将方法的返回值赋值给self
   2）。调用init方法初始化对象有可能会失败，如果初始化失败，返回的就是nil
   3）。判断父类是否初始化成功。判断self的值是否为nil 如果不为nil说明初始化成功
   4）。如果初始化成功 就初始化当前对象的属性
   5）。最后，返回self的值
 
 
 
   为什么要调用父类的init方法。
     因为父类的init方法 会初始化父类的属性 所以必须要保证当前对象中的父类属性也同时被初始化
   为什么要赋值给self
     因为 调用父类的init方法 会返回初始化成功的对象
     实际上返回的就是当前对象。但是我们要判断会否初始化成功
 
 
 
 -（instanceype)init
  {
     //0代表假 非0代表真
     if(self = [super init]){
       self.name = @"jack";
     }
     return self;
   }
 
 4.自定义构造方法
    规范：
     1）。自定义构造方法的返回值必须是instancetype
     2)。自定义构造方法的名称必须以initWith开头
     3）。方法的实现和init的要求一样
 
  
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
   
    Person *p1 = [[Person alloc] initWithName:@"Clare" andAge:35 andWeight:150.6f andHeight:175.7f];
    
    return 0;
}
