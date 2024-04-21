//
//  main.m
//  协议的类型限制
//
//  Created by DXM on 2022/7/18.
//
/*
 
 1.声明一个指针。着个指针可以指向任意的对象，但是要求指向的对象要遵守指定的协议
   声明一个指针。指向1个遵守了学习协议的对象，否则起码要给一个警告
 
   NSObject<协议名称> *指针名；
   这个时候，这个指针可以指向遵守了指定协议的任意对象。否则就会报1个警告
   NSObject<StudyProtocol> *obj = [Student new];
 
   当然完全也可使用id指针
   id<协议名称> 指针名
   id<StudyProtocol> id1 = [Student new];
 
 2.声明1个指针变量，要求这个指针变量指向的对象必须遵守多个协议
   NSObject<StudyProtocol,SBProtocol> *obj1 = [Student new];会报警告，因为student类没有遵守协议，遵守后警告就没了
   id<StudyProtocol,SBProtlcol> obj1 = [Student new];
 
 3.定义1个指针，指向遵守了学习协议的学生对象
 4.
   1）。遵守了某个协议的类，就相当于这个类拥有了这个协议所定义的行为。
   2）。因为我要调用这个对象中的协议方法。
       只有类遵守了协议，这个类中一定才会有协议方法。
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
