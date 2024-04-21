//
//  main.m
//  多文件开发
//
//  Created by DXM on 2022/7/12.
//
/*
  推荐方式
     把1个类写在1个模块之中，而1个模块至少包含两个文件。
     。h 头文件
        写类的声明 因为要用到Foundation框架中的类 NSObject 所以在这个头文件中要引入Foundation框架的头文件
        然后将类的声明的部分写在.h文件中
     。m头文件
        先引入模块的头文件 这样才会有类的声明
        再写类的实现
  
 如果要使用类，只需要引入这个模块的头文件就可以直接使用了
 
 
 还可使用Coco Class
 自动将类的声明和实现写好
   填写的名称是决定模块文件的名称。类名是可以自己再修改的
   但是建议模块的文件名和模块中的类名保持一致。这样方便代码的管理。
 
 当使用这个类时，需要先将这个类的头文件先引进来，才可以使用。
 
 对象传参 - （void）test：（Dog *）dog;
 在对象作为方法的参数传递的时候，是地址传递
  修改时，会影响实参变量指向的值
 
 方法的返回值是一个对象，那么返回值类型应该写 类指针。 -（Dog *)test1
 
 对象做为类的属性
  比如
  @interface HMPerson : NSObject
 {
    HMDog *_dog;
 }
 @end
 
 属性的本质是变量
 在创建对象的时候，对象中的属性是按照模板类中的规定挨个挨个的创建出来的。
 类模板中枢性是什么类型。那么对象中的属性就是什么类型。

 如果对象的属性是另外1个类的对象，这个属性仅仅是1个指针变量而已。并没有对象产生。
 这个时候 还要为这个属性赋值一个对象的地址 才可以正常使用
 
 A类可以作为B类的属性。代表B拥有A。
 属性仅仅是1个变量而已。是1个指针变量而已。默认值是nil 并没有创建对象。
 这个时候如果你要正常的使用的话，还要为B对象的A属性赋值1个对象 p1->_dog->_qq = [HMQuanQuan new]    p1->_dog->_qq->_color = @"土豪金"
 
 
 
 
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *p1 = [Person new];
        [p1 sayHi];
    }
    return 0;
}
