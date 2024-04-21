//
//  main.m
//  NSString
//
//  Created by DXM on 2022/7/13.
//


/*
 
 NSString *str = @"jack";
 
 @"jack"是1个NSString对象 str的值是这个对象的地址
 %p 打印的是指针变量的值
 %@打印的是指针变量指向的对象。
 
 NSString最常用的方法。
 1）。 +（instancetype）stringWithUTF89String:(const char*)nullTerminatedCString;
        instanceType 作为返回值 带白哦返回的是当前这个类的对象。
 
      作用：将C语言的字符串转换为OC字符串对象
 
 2). + (instancetype)stringWithFormat:(NSString *)format,...
     
      作用：拼接1个字符串对象。使用变量或者其他数据拼接成OC字符串。
 
     拼接字符串： string = [string1 stringByAppendingString:string2];

 
 
 最常用的对象方法
  
  1）。length方法 返回值为NSUInteger 其实就是unsigned long
      得到字符串的个数 可以处理中文。
  2)获得字符串下标指定字符
 
     - （unichar）characterAtIndex:(NSUInteger)index;
     返回值是unichar 其实就是unsigned short占据两个字节
     
     如果要返回unichar的变量的值使用%C 注意是大写的C char是小写的c
 
  3）判断两个字符串的内容是否相同
     -(BOOL)isEqualToString:(NSString *)aString;
     所以，判断两个字符串是否相等 应该使用这个方法去判断 才会得到正确的结果
      
  4）比较字符串的大小
     - (NSComparisonResult)compare:(NSString *)string;
     NSString *str1 = @"China";
     NSString *str2 = @"Japan";
     
     int res = [str1 compare:str2];
     NSLog(@"res = %d",res);
     完全可以使用int类接收结果，因为返回值是1个枚举
     返回-1 说明小于
     返回 0 等于
     返回 1 大于
     
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        char *str0 = "rose";
        
        NSString *str1 = [NSString stringWithUTF8String:str0];
        NSLog(@"str1 = %@",str1);
        
        
        NSString *name = @"小明";
        int age = 19;
        NSString *str = [NSString stringWithFormat:@"大家好，我叫%@，我今年%d岁",name,age];
        NSLog(@"str = %@",str);
        
        NSString *str3 = @"xcode基本使用";
        NSUInteger len = [str length];
        NSLog(@"len = %lu",len);
        
        unichar ch = [str3 characterAtIndex:3];
        NSLog(@"ch = %C",ch);
        
        NSString *str4;
        NSLog(@"字段：%@",str4);
        
        
        
        
        
        
        
    }
    return 0;
}
