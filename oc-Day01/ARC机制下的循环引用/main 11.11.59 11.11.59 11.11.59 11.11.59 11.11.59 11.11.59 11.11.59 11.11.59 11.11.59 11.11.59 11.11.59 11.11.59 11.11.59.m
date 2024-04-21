//
//  main.m
//  ARC机制下的循环引用
//
//  Created by DXM on 2022/7/17.
//

/*
  ARC机制下，当两个对象相互引用的时候，如果连边都使用strong  那么就会内存泄漏
  
 解决方案 一端使用strong 一端使用weak
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
