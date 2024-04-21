//
//  main.m
//  NSArray
//
//  Created by DXM on 2022/7/18.
//

/*
 1.NSArray
   1).是Foundation框架中的一个类，这个类的对象是来存储多个数据的，具备数组的功能。
      所以，NSArray是OC中的数组。
   2）。特点：
        a.只能存储OC对象。任意的OC对象
        b。长度固定。一旦NSArray数组创建完毕止呕，元素的长度固定，无法新增 无法删除元素
        c。每一个元素都是紧密相连的。每一个元素仍然有自己的下标
        d.元素的类型是id类型的
 
 2.NSArray数组的创建
   1）因为是一个类，所以当然是创建的NSArray对象
     NSArray *arr1 = [NSArray new];
     NSArray *arr1 = [NSArray alloc] init];
     NSArray *arr1 = [NSArray array];
   
     这样创建出来的NSArray数组的元素的个数是0个，因为长度固定。所以没有任何意义。
 
  2）创建数组时同时制定一个元素
    +（instancetype)arrayWithObject:(ObjectType)anObject
    
    NSArray *arr = [NSArray arrayWithObject:@"jack"];
    仍然没有意义，因为这个数组中只有1个元素
 
  3）。最常用的创建NSArray数组的方式
   +(instancetype)arrayWithObjects:(ObjectType)firstObj,……
   NSArray *arr = [NSArray arrayWithObjects:@"jack",@"rose",nil];
   只能存储oc对象
   将元素写完以后，要写一个nil表示结束
 
 创建的简要方式
 NSArray *arr = @[@"jack",@"rose",@"lili"];
 NSArray *arr1 = @[p1,p2,p3,p4,p5];
 这种方式不需要在最后加nil
 
 NSArray数组的使用
 1）。在NSLog函数中使用%@可以直接输出NSArray对象中的所有的元素的值
 2）NSArray数组中不能存储基本数据类型。不能存储非OC对象
      nil的本质就是0 所以nil无法存储到NSArray数组中

 取出存储在NSArray数组中的元素的值
 1）。可以使用下标取出对应的元素的值
         NSLog（@“%@”，arr【0】）；
  2）调用数组对象的对象方法来取出指定下标的元素的值
       -（ObjectType）objectAtIndex:(NSUInteger)index;
     
       NSArray *arr = @[@"jack",@"rose",@"lili"];
       NSString *str = [arr objectAtIndex:3];
       NSLog(@""%@,str);

 NSArray数组的其他的常用方法
 1）。得到NSArray数组中的元素个数
          @property（readonly）NSUInteger count;
           arr.count [arr count]
 2).判断是否含有指定元素
           -（BOOL）containsObject:(ObjectType)anObject;
 3)取到第一个元素
      arr.firstObject
     与arr0区别  数组元素中如果没有任何元素，arr[0]报错。firstObject取到nil不报错
  4）取到最后一个元素
     @property(nullable,nonatomic,readonly) ObjectType lastObject

 5)查找指定的元素在NSArray数组中第一次出现的下标
      -（NSUInteger） indexOfObject:(ObjectType)anObject;
      NSUInteger index = [arr indexOfObject:@"rose"];
      如果没有找到 返回的是NSUInteger的最大值（NSNotFound）


 NSArray数组遍历
  1.使用for循环
  2.增强for循环
     a.语法格式：
                  for（元素类型 变量名 in 数组名）
                   {
                        直接通过变量名就可以拿到数组中的每一个元素
                     }
                    for(NSString *str in arr)
                     {
                          NSLog(@"%@",str);
                      }

     b.声明在for()中的变量叫做迭代变量
     c.执行的原理
        将数组中的第一个元素赋值给迭代变量，执行循环体。
         。。。。。。。
         将数组中的最后一个元素的值赋值给迭代变量，执行循环体。
         结束循环
     d.语法总结
        -》迭代变量的类型和数组中的元素的类型保持一致
        -》迭代变量的名称可以任意取
        -》in 是固定的
        ->遍历那个数组，就将数组写在in后面
        -》循环体里面。迭代变量的值就是元素的值
        

    当NSArray数组中存储的数据类型不一致时 迭代变量的类型建议使用id类型

 3）。使用block遍历。
      -（void）enumerateObjectsUsingBlock:(void(^)(ObjectType obj,NSUInteger idx,BOOL *stop)) block
      这是1个方法。这个方法的作用就是遍历数组中的每一个元素
      [arr enumerateObjectsUsingBlock:^(id _Nonnull obj,NSUInteger idx,BOOL *_Nonnull stop){
                 
      }];

     NSArray *arr = @[@"jack",@"rose",@"jim"];
     //这个方法做的事情：将arr数组中的每一个元素遍历出来
     /./当它将每一个元素遍历出来以后，如何处理遍历出来的元素
    //所以要求我们传递一段处理元素的代码过去
      [arr enumerateObjectsUsingBlock:^(id _Nonnull obj,NSUInteger idx,BOOL *stop){
       NSLog(@"%@.length=%lu",obj,[obj length]);
       NSLog(@"idx = %lu",idx);
         //如果想停止遍历，就将stop指针指向的BOOL变量的值改为YES
        if(idx == 1)
         {
              *stop = YES
          }
     }];


  NSArray与字符串的两个方法
     1）。将数组中的元素连接起来组成一个新的字符串
          -（NSString *)componentsJoinedByString:(NSString *)separator
          参数：连接符  如separator为@，则arr中的数组是以@链接
          
     2）。将字符串一指定的分隔符分成一个数组，每一部分就是数组的1个元素
         - （NSArray<NSString *> *)componentsSeparatedByString:(NSString *)














 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
