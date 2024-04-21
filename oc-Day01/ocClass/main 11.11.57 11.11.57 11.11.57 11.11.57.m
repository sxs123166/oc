//
//  main.m
//  ocClass
//
//  Created by DXM on 2022/7/11.
//

/*
 类
 
 1。类的三要素
 
 2.定义类的语法
 a.位置。直接写在源文件之中
 b.类的定义分为两个部分
   ->类的声明
   @interface 类名 ： NSObject
 {
     这类事务具有的共同的特征，将他们定义为变量。
 }
 功能就是一个方法，将方法的声明写在这里。
 @end
 -> 类的实现
 
 @implementation 类名
 将方法的声明写在这里。
 @end
 
 
 注意
 a.类必须要有声明和实现
 b.类名使用你描述事物的名称和命名就可以
   类名的每一个的首字母必须要以大写开头
 
 c.NSObject照写就可以
 d.用来表示这类事务的共同的特征的变量我们叫做属性
 
 @interface 类名 : NSObject
 {
    数据类型 变量名1；
    数据类型 变量名2；
    变量名加下划线
 }


 @end

 @implementation 类名


 @end
创建对象
语法：类名 *对象名 = 【类名 new】；
 Person *p1 = [Person new];
 
 
 如何使用对象；
 如何访问对象的属性：
 1.默认情况下，对象的属性是不允许被外界直接访问的。
   如果允许对象的属性可以被外界访问，那么就在声明属性的事加1个@public关键字
 2.访问对象的方式
   对象名->属性名 = 值
   对象名->属性；
 */




#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
    float _height;
    
}


@end

@implementation Person


@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *p1 = [Person new];
        p1->_name=@"jack";
        //(*p1)._name=@"dxm";
        NSLog(@"%@",p1->_name);
    }
    return 0;
}
