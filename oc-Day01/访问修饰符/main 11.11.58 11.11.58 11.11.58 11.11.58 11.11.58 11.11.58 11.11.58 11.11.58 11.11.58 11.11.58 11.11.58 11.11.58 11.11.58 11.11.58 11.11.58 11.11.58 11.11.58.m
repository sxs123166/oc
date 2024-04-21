//
//  main.m
//  访问修饰符
//
//  Created by DXM on 2022/7/14.
//

/*
 1.访问修饰符：用来修饰属性。可以限定对象的属性在那1段范围之中访问。
   
   @private：私有 被@private修饰的属性只能在本类的内部访问
             只能在被类的方法实现中访问。
   @protected：受保护的。被@protected修饰的属性只能哎本类和本类的子类中访问
   @package：被@package修饰的属性 可以在当前框架中访问
   @public： 公共的。被@public修饰的属性 可以在任意的地方访问
 
 2.如果不为属性指定访问修饰符 那么默认的就是@protected
 
 
 3.访问修饰符作用域
 
   从写访问修饰符的地方开始往下。直到遇到另外1访问修饰符或者结束大括弧为止。
   中间的所有的属性都应用这个访问修饰符。
 
 4.访问修饰符只能用来修饰属性 不能用来修饰方法
 
 
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
