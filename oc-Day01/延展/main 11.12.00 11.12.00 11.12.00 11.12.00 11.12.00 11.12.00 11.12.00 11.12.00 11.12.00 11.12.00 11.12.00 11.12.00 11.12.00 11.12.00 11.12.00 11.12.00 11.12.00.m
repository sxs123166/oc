//
//  main.m
//  延展
//
//  Created by DXM on 2022/7/17.
//


/*
 1.延展：Extension
   1）。是一个特殊的分类。所以延展也是类的一部分
   2）。特殊之处：
       a.延展这个特殊的分类没有名字
       b.只有声明没有实现。和本类共享一个实现
 
    语法：
      @interface 本类名（）
      @end
      没有实现。和本类共享一个实现
 
 
   3）说明
     只有一个。h文件。文件名称：本类名_取得文件名.h
     这个文件中只有延展的声明
     @interface Person ()
     
     @end
 
  4)延展的使用
    延展本质是一个分类。作为本类的一部分
    延展是一个特殊的分类
    没有名字
   
    只有声明 没有单独的实现 和本类共享一个实现
    
  5）延展和分类的区别
     1）分类有名字 延展没有名字 是一个匿名的分类
     2）每一个分类都有单独的声明和实现。而延展只有声明，没有实现 和本类共享一个实现
     3）分类中只能新增方法 而延展中任意成员都可以写
     4）分类中可以写@property 但是只会生成getter setter方法的声明
        延展中可写@property 会自动生成私有属性 也会生成getter和setter的声明和实现
    
  6）使用场景
     1）要为类写一个私有的@property 生成getter setter方法只能在类的内部访问 不能在外部访问
     2）延展100%的情况下不会独占1个文件。都是将延展直接写在本类的实现文件中。
        这个时候，写在延展中的成员就相当于是这个类的私有成员，只能在本类的实现中访问。
        外部不能访问
     3)什么时候使用延展
        当我们想为类定义私有成员的时候，就可以使用延展，将延展定义在这个类的实现文件中
        如果要为类写1个私有方法，建议将声明写在延展中，实现写在本类的实现中，提高代码的阅读性
        如果想要为类写一个私有的property 就直接写在延展就可以了
     
      4）延展天生就是来私有化类的成员的
         如果类的成员只希望在类的内部访问，那么就将其定义在延展中
         如果类的成员允许被外界访问 定义在本类的@interface中
       
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
