//
//  main.m
//  block的使用
//
//  Created by DXM on 2022/7/18.
//

/*
  1.block是1个参可以作为函数的参数
  
  2.如何为函数定义block类型的参数？
    a.就是在小括弧中声明1个指定格式的block变量就可以了
    b.可以使用typedef简化定义，这样看起来就不会繁琐
  
  3.如何调用带block参数的函数呢？
    如果要调用的函数的参数是block类型的，那么要求在调用的时候传入1个和形参block要求的代码段
    调用的时候，可以先将代码存储到1个block变量中，然后再传递这个block变量
    也可以直接将符合要求的代码段在小括弧中传递。
  4.实现的效果
    可以讲调用者自己写的1段代码 传递到 函数的内部去执行
 
  5.block也可以作为函数的返回值
    当将block作为函数参数返回值的时候，但绘制的类型就必须要使用typedef定义的短类型
   
 6. block与函数
    相同点：都是封装一段代码
    
    不同点：
    1）。block是1个数据类型。函数是一个函数
    2）。我们可以声明block类型的变量 函数就只是函数
    3）。block可以作为函数的参数。而函数不能直接作为函数的参数
 
 
 
 
 */

#import <Foundation/Foundation.h>
typedef void (^NewType)();

void test(NewType block1)
{
    NSLog(@"");
    block1();
    NSLog(@"");
}

NewType ttt()
{
    void (^block1)() = ^{
        NSLog(@"block");
    };
    return block1;
    
}

void test2(int (^paramBlock)(int num1,int num2))
{
    NSLog(@"-------");
    int sum = paramBlock(10,20);
    NSLog(@"%d",sum);
    NSLog(@"--------");
}
int main(int argc, const char * argv[]) {
    NewType type1 = ^{
        NSLog(@"哈哈");
    };
    
    NewType type = ttt();
    type1();
    
    test(type1);
    
    test2(^int(int num1, int num2) {
        return num1+num2;
    });
    
    return 0;
}
