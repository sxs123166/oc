//
//  main.m
//  NSMutableString
//
//  Created by DXM on 2022/7/18.
//

/*
 1.字符串的恒定性，那么这个字符串的内容就无法修改，当我们修改字符串的时候，其实是重新的创建了1个字符串对象
 
 2.NSMutableString
  1).是Foundation框架中的1个类。从NSString继承
     所以，NSMutableString对象是用来存储字符串数据的
  2）NSMutableString在父类NSString的基础之上的做扩展
     存储在NSSMutableString对象中的字符串数据可以修改，具备可变性
     可以直接改存储在NSMutableString对象中的字符串数据，不会创建新对象
 
 4.NSMutableString的用法
   1）既然是1个类，要使用的话，就得创建一个对象
     NSMutableString *str = [NSMutableString string];
     
   
   2)往可变字符串中追加字符串
      -（void）appendString:(NSString *)aString;直接追加内容
      -(void)appendFormat:(NSString *)format,……以拼接的方式往可变字符串对象中追加内容
      [str appendString:@"jack"]
   3）NSMutableString从NSString继承
     在使用NSString的地方完全可以使用NSMutableString
 
  平常使用时，使用NSString
   大批量字符串拼接时，使用NSMutableString
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
