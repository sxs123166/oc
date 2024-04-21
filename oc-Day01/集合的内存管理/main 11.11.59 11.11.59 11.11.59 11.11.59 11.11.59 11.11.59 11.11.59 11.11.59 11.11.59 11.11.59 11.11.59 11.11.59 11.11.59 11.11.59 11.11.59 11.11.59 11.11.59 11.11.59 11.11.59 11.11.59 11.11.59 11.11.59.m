//
//  main.m
//  集合的内存管理
//
//  Created by DXM on 2022/7/19.
//

/*
 1.在MRC模式下 将1个对象存储到集合中，会不会影响对象的引用计数器
    
   将对象存储到集合之中，会为这个对象的引用计数器+1
   当集合销毁的时候 就会像存储在集合中的所有的对象发送一条release消息
   

 2.使用@[]或者@{}创建的集合已经是被autorelease过的了
   直接调用和类同名的类方法创建的对象  也是被autorelease过的了
 
  
 3.在ARC的模式下，集合的元素是一个强类型的指针
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
