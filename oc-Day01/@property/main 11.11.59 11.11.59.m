//
//  main.m
//  @property
//
//  Created by DXM on 2022/7/14.
//

/*
 
 @property
  
 1）。作用：自动生成getter、setter的声明。
           因为是生成方法的声明，所以应该写在@interface类的声明之中
 
 2）。语法：
      @property 数据类型 名称；
      @property int age;
 3).原理：
    编译器在编译的时候，会根据@property生成getter和setter方法的声明。（即实现还得自己写）
    
    @property 数据类型 名称；记住去掉下划线
    生成为：
    - (void) set首字母大写的名称：（数据类型）名称；
    -（数据类型）名称；
    @property int age;
    - （void）setAge:(int) age;
    -  (int) age;
 
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
