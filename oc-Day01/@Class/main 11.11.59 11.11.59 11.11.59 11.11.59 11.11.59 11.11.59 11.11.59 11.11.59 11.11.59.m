//
//  main.m
//  @Class
//
//  Created by DXM on 2022/7/17.
//

/*
 
  @property无法解决循环引用的问题，即两个类互相@property(nonatomic,retain)BOOK *book这样引入
 
  解决方法：
   其中一边不要使用#import引入对方的头文件。
   而是使用@class类名；来标注这是一个类 @class BOOK
  
   @class与#import区别
    1）。#import是将指定文件的内容拷贝到写指令的地方
    2）。@class并不会拷贝任何内容，只是告诉编译器，这是一个类。
 
 
 */







#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
