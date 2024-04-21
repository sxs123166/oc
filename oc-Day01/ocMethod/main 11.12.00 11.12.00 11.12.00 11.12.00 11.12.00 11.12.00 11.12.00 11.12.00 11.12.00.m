//
//  main.m
//  ocMethod
//
//  Created by DXM on 2022/7/11.
//

/*
无参数的方法
 1.声明
  a. 位置
  b.语法：
       -（返回值类型）方法名称
 2.实现
  a.位置：在@implementation之中实现
  b.实现的语法：
             将方法的声明拷贝到@implementation之中，去掉分号 追加大括号一堆 将方法实现的代码写在大括弧之中。
 3.调用
   【对象名 方法名】；
    
 带一个参数的方法。
 1.声明：
   a.位置：在@interface的大括弧的外面
   b.语法：
     -（返回值类型）方法名称：（参数类型）形参名称；
 
 调用： [对象名：方法名：实参];
 
 带多个参数的方法。
 1）声明
    a.位置：在@interface的大括弧的外面
    b。语法：
          - （返回值类型）方法名称：（参数类型）形参名称1 ：（参数类型）参数名称2 ：（参数类型）参数名称3；
          -（int)sum:(int)num1 :(int)num2;
  方法名为——：记住带冒号 比如eat：
  代码可读性提高
      -（int)sumWith:(int)num1 and:(int)num2;  sum = [p1 sumWith:10 and:20];
      - (int)sumWithNum1:(int)num1 andNum2:(int)num2;  [p1 sumWithNum1:10 andNumm2:20];
 */

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
}
-(void)run;
-(void)eat:(NSString *)foodName;
-(int)sum:(int)num1 :(int)num2;
@end

@implementation Person
- (void)run
{
    NSLog(@"无参数打印");
}
#pragma mark 分组导航
- (void)eat:(NSString *)foodName
{
    NSLog(@"%@",foodName);
}
#pragma mark - 带水平线的分组
- (int) sum:(int)num1 :(int)num2
{
    return num1+num2;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *p1 = [Person new];
        
        [p1 run];
        [p1 eat:@"有参数的实现"];
        int sum = [p1 sum:10:20];
        NSLog(@"sum = %d",sum);
    }
    return 0;
}
