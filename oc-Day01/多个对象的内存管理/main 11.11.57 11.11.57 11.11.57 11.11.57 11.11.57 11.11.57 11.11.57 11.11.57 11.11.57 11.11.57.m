//
//  main.m
//  多个对象的内存管理
//
//  Created by DXM on 2022/7/17.
//
/*
  1.当属性是1个OC对象的时候，setter方法的写法
    将传进来的对象赋值给当前对象的属性，代表传入的对象多了一个人使用，所以我们应该先为这个传入的对象发送一条retain消息 再赋值
    当当前对象被销毁的时候，代表属性指向的对象少一个人使用，就应该在dealloc中release
    
    代码写法：
    -（void)setCar:(Car *)car
    {
        _car = [car retain]
     }
    
    -(void)dealloc
     {
        [_car release]
        [super dealloc]
     }
 2.出现僵尸对象错误的原因  在于新旧对象是同一个对象
   不用做多余的release操作
 3.我们管理的范围是OC对象。
   所以只有属性的类型是OC对象的时候。这个属性的setter方法才要向上面那样写
   如果属性不是OC对象类型的，setter方法直接赋值就可以了
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
