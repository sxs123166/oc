//
//  main.m
//  NSFileManager
//
//  Created by DXM on 2022/7/19.
//

/*
 1.NSFileManager是Foundation框架提供的一个类
   这个类的作用：用来操作磁盘上的文件 文件夹 对他们进行创建、删除、复制 拷贝 移动
  
 2.NSFileManager是一个类
   这个类的对象是以单例模式创建的
   如何得到NSFileManager的一个单例对象
   调用这个类的类方法defaultManager 就可以得到这个类的类对象
   NSFileManager *fileManager = [NSFileManager defaultManager]
 
 3.常用方法之判断
   1）。判断指定的文件或者文件夹在磁盘上是否真实的存在
       -（BOOL）fileExistsAtPath:(NSString *)path;
   
   2)判断指定的路径是否真实的存储在我们的磁盘之上，并且判断这个路径是1个文件夹路径还是1个文件路径
       -（BOOL）fileExistsAtPath:(NSString *)path isDirectory:(BOOL)isDirectory
      返回值：代表这个路径是否存在
      参数指针：代表这个路径是否是1个文件夹路径
   
   3）。判断指定的文件夹或者文件是否可以读取
       -（BOOL）isReadableFileAtPath:(NSString *)path;
   4).判断指定的文件或者文件夹是否可以写入
      -（BOOL）isWritableFileAtPath:(NSString *)path;
   5)判断指定的文件或者文件夹是否可以删除
      -（BOOL）isDeletableFileAtPath:(NSString *)path;
 
 4.常见方法之 获取信息
   1）。获取指定文件或者文件夹的属性信息
        -（NSDictionary *)attributesOfItemAtPath:(NSString *)path error:(NSError **)error
        返回的是1个字典，如果要拿到特定的信息 通过key
   2）。获取指定目录下的所有文件夹和目录。是拿到指定目录下的所有的文件和目录 所有的后代目录和文件
        -（NSArray *)subpathsAtPath:(NSString *)path
        NSFileManager *manger = [NSFileManager defaultManager];
        
        NSString *path = @"/Users/Apple/Desktop/abd.plist"
        BOOL flag = NO
        BOOL res = [manager fileExistsAtPath:path isDirectionary:&flag];
        先判断是否存在
        if(res == YES)
        {
            在判断是一个文件路径还是文件夹路径
            if（flag == YES）
             {
                文件路径
             }
            else
              {
               文件夹路径
              }
         }
   3).获取指定目录下的所有的子目录和文件 不保护孙子辈
      1)（BOOL)createFileAtPath:(NSString *)path contents:(NSData *)data attributes:(NSDictionary *)attr
         第一个参数：要创建的文件的路径。
         第二个参数：这个文件的内容。要传递这个文件的二进制格式。
                   这个二进制的数据格式 使用NSData对象来封装。
          NSData：将别的格式的数据转换为二进制数据
          将字符串转换为NSData二进制的方式 调用字符串对象的。
          -（NSData *)dataUsingEncoding:(NSStringEncoding)encoding
          编码参数：NSUTF8StringEncoding
          指定1个遍吗 就可将字符串转换为二进制数据 存储在NSData之中
          最后再将这个二进制对象通过这个方法写入
          如果想创建1哥控文件 第2哥参数就给nil
          
        第三个参数：指定创建的文件属性。如果想要使用系统扽默认值使用nil
  
      2）。在指定的目录文件创建文件夹
           -（BOOL)createDirectoryAtPath:(NSString *)path withIntermediateDiirectories:(BOOL)createIntermediates
           attributes:(NSDictionary *)attributes error:(NSError **)error
 
          NSFileManager *manager = [NSFileManager defaultManager];
          //存储在磁盘上得任何文件都是以二进制的形式存储的
          //第2个参数是文件的内容。要求是文件的二进制内容
          //NSData对象就是专门用来保存二进制数据的
 
   
  
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
