//
//  main.m
//  NSNumber
//
//  Created by DXM on 2022/7/19.
//

/*
 1.无论是NSArray还是NSMutableArray里面都只能存储OC对象
   基本数据类型是无法存储的
   
 2.如何将基本数据类型的数据存储到NSArray数组中
 
 3.NSNumber是Foundation框架中定义好的1个类。这个类的对象的作用就是用来包装基本数据类型的
   将基本数据类型存储到NSArray数组中的步骤
   
   1）。先将基本数据类型包装到NSNumber对象中
   2）。在将NSNumber对象存储到NSArray数组中
 
 4.简写方式
   NSNumber *number1 = @10;
   NSNumber *number2 = @20;
 
  NSArray *arr = @[@10,@20,@30,@40];
   for(NSNumber *num in arr){
 
  }
  
  包装注意：如果后面的数据是1个变量 那么这个变量就必须要使用小括弧括起来
   int num = 10
   NSNumber *n1 = @(num);
 
  
   
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
