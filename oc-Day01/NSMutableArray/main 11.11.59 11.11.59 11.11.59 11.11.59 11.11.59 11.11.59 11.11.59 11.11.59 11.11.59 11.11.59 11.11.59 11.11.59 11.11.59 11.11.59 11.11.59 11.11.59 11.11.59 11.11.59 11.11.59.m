//
//  main.m
//  NSMutableArray
//
//  Created by DXM on 2022/7/19.
//
 
 /*
  1.NSMutableArray是NSArray的子类
    1）。NSMutableArray仍然是1个数组。具备NSArray数组的特点
        只能存储OC对象。每1个元素的紧密相连的
    2）NSMutableArray相对于父类做的拓展：NSMutableArray数组的元素可以动态的新增和删除
       其他的用法均与NSArray一致
       所以：NSArray数组一旦创建，其元素的个数就固定，无法新增删除。
            NSMutableArray数组。元素可以新增 可以删除。其他用法和父类一样
            
   
  2.NSMutableArray数组的创建
    
     NSMutableArray *arr1 = [NSMutableArray new];
     NSMutableArray *arr2 = [[NSMutableArray alloc] init];
     NSMutableArray *arr1 = [NSMutableArray array];
     这样创建出来的对象 ，数组的元素是0 仍然是有意义的 因为我们可以动态的新增和删除元素
  
    也可以使用这样的方式
    NSMutableArray *arr1 = [NSMutableArray arrayWithO objects：@“jack”,@"rose",@"lili",nil];
  
  3.新增元素
     -（void）addObject:(id)andObject;
     将传入的参数作为数组的元素添加进去
     -（void）addObjectsFromArray:(NSArray<ObjectType> *)otherArray;
     将另外1个数组中的每一个元素添加到可变数组中
 4.在可变数组中指定的下标中插入一个元素
     -（void)insertObject:(ObjectType)anObject atIndex:(NSUInteger)index;
  
 5.删除可变数组中指定下标的元素。
     -（void)removeObjectAtIndex:(NSUInteger)index;
 6.删除可变数组中所有指定的元素
      -（void）removeObject;(ObjectType)anObject;
  
  7.删除指定的元素指定范围的元素
    -（void)removeObject:(ObjectType)anObject inRange:(NSRange)range;
    
  8.删除最后一个元素
    -（void）removeLastObject
   
  9.删除所有的元素
    -（void)removeAllObjects
  
  */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
