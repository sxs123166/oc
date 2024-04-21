//
//  main.m
//  NSMutableDictionary
//
//  Created by DXM on 2022/7/19.
//
/*
 1.NSMutableDictionary
   1）。是NSDictionary的子类。所以NSMutableDictionary也是一个字典数组，也是以键值对的形势存储数据的
   2）。重点：NSMutableDictionary在父类基础之上做的扩张； 存储在其中的元素可以动态的新增和删除
   3）。创建可变字典数组。
       NSMutableDictionary *dict1 = [NSMutableDictionary new]
       NSMutableDictionary *dict1 = [NSMutableDictionary alloc] init]
       NSMutableDictionary *dict1 = [NSMutableDictionary dictionary]
 
      NSMutableDictionary  *dict = [NSMutableDictionary
                                    dictionaryWithObjectsAndKeys:@"jack",@"name",@"18":@:"age",nil];
      在创建可变字典数组的同时初始化键值对
      -(void)setObject:(ObjectType)andObject forKey:(KeyType <NSCopying>)aKey; 如果键重复，就会替换
      新增键值[dict setObject:@"187.1" forKey:@"address"]
 
      -（void）removeAllObjects;删除所有的键值对
      -（void)removeObjectForKey:(KeyType)aKey; 删除指定的键值对
 
 2.将字典的信息持久化起来
   将字典数组的信息保存到plist文件中
    -（BOOL）writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile;
     
   从plist中还原回字典
    +（nullable NSDictionary<KeyType,ObjectType> *)dictionaryWithContentsOfFile:(NSString *)path;
 
 
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
