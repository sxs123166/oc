//
//  main.m
//  自动释放池
//
//  Created by DXM on 2022/7/17.
//

/*
   1。自动释放池的原理
      存入到自动释放池中的对象，在自动释放池销毁的时候，会自动调用存储在该自动释放池中的所有对象的release方法
       
      可以解决的问题：
        将创建的对象，存入到自动释放池之中，就不再需要手动的release这个对象了
        因为池子销毁的时候 就会自动的调用池中所有的对象的release
 
        自动释放池的好处：将创建的对象存储到自动释放池中，不需要再写release

   2. 如何创建自动释放池
      @autoreleasepool
      {
       }
 
   3.如何将对象存储到自动释放池之中
     在自动释放池之中调用对象的autoreleas方法。就会将这个对象存入到当前自动释放池之中
     这个autolease方法返回的是对象本身。所以，我们可以这么写
   @autoreleasepool
   {
     Person *p1 = [[[Person alloc] init]autorelease]
    }
    
    这个时候，当这个自动释放池执行完毕之后，就会立即为这个自动释放池中的对象发送一条release消息
    目前为止，我们感受到的autorelease的好处
    创建对象，调用对象的autorelease方法 将这个对象存入到当前的自动释放池之中
    我们就不需要再去release 因为自动释放池销毁的时候。就会自动调用池中所有对象的release
 
    类方法的规范：
       一般情况下，要求提供与自定义构造方法相同功能的类方法。这样可以快速的创建一个对象
       +（instancetype)pigWithName:(NSString *)name andAge:(int)age andWeight:(float)weight;
       {
          return [[self alloc] initWithName:name andAge:age andWeight:weight];
       }
       Pig *p2 = [Pig pigWithName:@"八届" andAge:2 andWeight:260];
       使用类方法创建的对象，要求这个对象在方法当中就已经被autorelease过了
      +(instancetype)pig
      {
         return [[[self alloc]init]autolease];
      }
 
 
 
 
 
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
