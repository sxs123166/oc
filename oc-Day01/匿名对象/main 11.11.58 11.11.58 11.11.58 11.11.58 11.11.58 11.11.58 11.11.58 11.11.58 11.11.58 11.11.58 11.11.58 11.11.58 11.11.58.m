//
//  main.m
//  匿名对象
//
//  Created by DXM on 2022/7/13.
//
/*
 匿名对象
 
 如[Person new]->name = @"jack";
   [[Person new] sayHi];
 因为new实际上1个类方法，这个方法做的事情创建对象（4个步骤），返回值是创建的对象的地址。
 [person new]这句代码的结果实际上就是创建的那个对象的指针，那我们可以直接使用。
 
 注意点
   1）匿名对象只能使用1次
   2）每次创建匿名对象都是不同的对象
 
 使用情况
   如果某个对象的成员只会被我门使用一次。用完之后这个对象就再也不需要了 那么就可以使用匿名对象
   如果方法的参数是一个对象，而调用者为这个参数赋值的对象 就是专门来给这个方法传递的
   并且这个对象调用者不会使用 那么这个时候就可以直接为方法传递1个匿名对象
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
