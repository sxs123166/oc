//
//  main.m
//  ARC与MRC的兼容
//
//  Created by DXM on 2022/7/17.
//

/*
  在oc-day01中选择Build phases 双击需要变成ARC的.m对象。
  使用命令 输入-fno-objc-arc
 
  
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
