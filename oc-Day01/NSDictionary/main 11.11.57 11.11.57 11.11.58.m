//
//  main.m
//  NSDictionary
//
//  Created by DXM on 2022/7/19.
//

/*
  1.NSDictionary 与 NSMutableDictionary
   字典数组
  2.NSDictionary 字典数组
    1）。存储数据的原理。
        a.以键值对的形式存储数据
        b.字典数组一旦创建，其中的元素就无法动态的新增和删除
        c.键：只能是遵守了NSCoping协议的对象。而NSString就是遵守了这个协议
          值：只能是OC对象
    2）。创建字典数组
        无意义的方式
        NSDictionary *dict1 = [NSDictionary new];
        NSDictionary *dict2 = [[NSDictionary alloc] init];
        NSDictionary *dict3 = [NSDictionary dictionary];
 
       
   3).一般创建方式
     +（instancetype)dictionaryWithObjectsAndKeys:(id)firstObject,...
     将字典数组的值键 挨个的写在后面初始化
     NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"jack",@"name",@"name",@"北京市xx接到",@"address",nil]
 
 3.简要创建方式。
   @{键1:值1，键2:值2，键3:值3，。。。。。。}；
   NSDictionary *dict = @{@"name":@"rose",@"age":@"18",@"addredd":@"BeiJingXXStreet"};
   NSLog(@"%@",dict);
 

 4.取出数据
   a.存储在字典数组中的元素不能使用下标去取 而是用键 也就是别名去取
   
   ->使用中括弧的方式
     字典数组名[键】；这样就可以取到字典数组中这个键对应的值
     NSLog(@"%@",dict[@"name"]); 取出dict字典数组中@“name”这个键对应的值。
   ->调用字典数组对象的方法也可以取出键对应的值。
     -（nullable ObjectType)objectForKey:(KeyType)aKey;
     如果给定的key在数组中不存在 取到的值是nil 不会报错
   
    b。渠到字典数组的键值对的个数
     @property(readonly)NSUInteger count;
   
    3).往字典数组中存储键值对的时候 键不允许重复
       如果键重复：后加的无效
 
  5.遍历字典数组
    1）使用增强for循环。遍历键，通过键取出对应的值
       for(id item in dict)
        {
          NSLog(@"%@ = %@",item,dict[item]);
        }
   2）使用block遍历
     [dict enumerateKeysAndObjectsUsingBlock:^(id _Nonnull key,id _Nonnull,BOOL *_Nonnull stop){
       NSLog(@"%@ = %@",key,obj);
     }]
 
 
   %@打印的数据：按照键的ASCII。
   6.字典数组存储数据的原理
     1）。当往字典数组中存储1个键值对的时候，这个键值对应该存储在下标为几的元素中呢
         ->并不是按照顺序挨个存储
         ->存储键值对的石斛，会根据键和数组的长度做一个哈希算法。算出一个下标。将这个键值对存储在该下标处
 
     2）取值的时候：
        也是根据键做一个哈希算法。就可以算出这个键值对存储的下标。然后直接找到这个下标的数据取出就可以了
 
   与NSArray对比
    1）NSArray数组的元素 按照顺序存储
      字典中的数组不是挨个存储 存储的下标是算出来的
     
     2）存效率：NSArray效率更高一些
        取得时候：如果取值的时候，是一次性全部取出来，这时NSArray更快 一次性取几个 字典数组更快一些
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
