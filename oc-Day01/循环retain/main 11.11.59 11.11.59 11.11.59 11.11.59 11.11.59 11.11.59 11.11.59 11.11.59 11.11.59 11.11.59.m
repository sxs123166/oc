//
//  main.m
//  循环retain
//
//  Created by DXM on 2022/7/17.
//


/*
   1.当两个对象互相引用的时候。
     A对象的属性是B对象  B对象的属性是A对象
     这个时候 如果两边都使用retain  那么就会发生内存泄漏
 
   2.解决方案：一端使用retain 另一端使用assign
      使用assign的那一端在dealloc中在dealloc中不再需要release了
    
  
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
