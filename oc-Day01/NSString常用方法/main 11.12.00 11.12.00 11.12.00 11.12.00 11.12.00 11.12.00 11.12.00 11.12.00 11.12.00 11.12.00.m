//
//  main.m
//  NSString常用方法
//
//  Created by DXM on 2022/7/18.
//

/*
 1.NSString是1个类，那么肯定其中有很多方法。
 
 2.使用频率最高的几种方法
   1）。使用拼接的方式创建1个NSString对象
       +（instancetype)stringWithFormat:(NSString *)foamat,...
 
   2)得到字符串的长度
     @property（readonly）NSUInteger length;
     
   3).得到字符串中指定下标的字符
      -（unichar)characterAtIndex:(NSUInteger)index;
      返回值是unichar类型的 要打印的话使用%C
   4）。判断两个字符串的内容是否相同
       - （BOOL)isEqualToString:(NSString *)aString;
    
   5）C语言字符串转换为OC字符串对象
      +（instancetype)stringWithString:(NSString *)string;
 
   6)将OC转换为C语言
      @property（nullable,readonly)__strong const char *UTF8String
      const char *s = str.UTF8String;
 
 
 3。将字符串内存写入到磁盘上的某一个文件之中
    -（BOOL）writeToF列：（NSString *)path atomically:(BOOL)useAuxiliaryFile encoding:
      (NSStringEncoding)enc error:(NSError **)error;
   
   参数1:将字符串内容写入到那1个文件指针 写上文件的路径
   参数2:YES，先将内容写入到1个临时文件。如果再讲这个文件半岛指定的目录。安全，效率较低。
        NO，直接将内容写入到指定的文件 不安全 效率高。
   推荐使用NO
   参数3:指定写入的时候使用的编码，一般使用UTF8
   参数4:二级指针，要传递1个NSError指针的地址。
        如果写入成功，这个指针的值就是nil
        如果写入失败。着个指针就会指向1个错误对象。这个对象描述了发生错误的信息。
        这个对象的localizedDescription方法可以得到发生错误的简要信息
        如果我们判断是否写入成功，也可判断这个指针的值是否为nil
 
        如果不想知道发生错误的原因，那么第4个参数给nil就可以了。
   返回值是BOOL类型的，代表是否写入成功
  
 
 4.从磁盘上的文件读取文件中的内容。
   
  [NSString stringWithContentsOfFile:@"/Users/Itcast/Desktop/1.txt" encoding:NSUTF8StringEncoding error:nil]
  
  第一个参数：文件的路径
  第二个参数：使用的编码。NSUTF8StringEncoding
  第三个参数：错误对象
 
  
 5.使用URL来读写字符串数据
   1）优势：既可以读写本地磁盘文件。
          还可以读写网页文件、ftp服务器上的文件
 
   2）。不同的类型的URL地址的写法
      1）。本地磁盘文件：file:///Users/itcast/Desktop/1.txt
      2)。网页地址：http://www.itcast.cn/index.html
      3).ftp文件的地址： ftp://server.itcast.cn/1.txt
   
   3).将不同类型的地址封装在NSURL对象之中
 
   NSURL *u1= [NSURL URLWithString"@"http://192.168.27.8/Index.html"]
   
   NSString *str = [NSString stringWithContentsOfURL:u1 encoding:NSUTF8StringEncoding error:nil];
   
   NSLog(@"%@",str);
 
 6.字符串的比较
   -（NSComparisonResult)compare:(NSString *)string
   
  返回1 str1比str2大
  返回0 相等
  返回-1 str1<str2
  
 7.忽略大小写的比较
 
 -（NSComparisonResult)compare:(NSString *)string opyions:
  
  int res = [str1 compare:str2 options:NSCaseInsensitiveSearch];
  
  8.只比较字符串中的数字
    int res = [img1 compare:img2 options:NSNumericSearch];
 
 p.判断字符串的开始和结束
   
  BOOL res = [str hasPrefix:@"http://"];
  LogBOOL(res);
 
  BOOL res = [path has Suffix:@".mp3"];
 
 
 9.在主串中搜索子串
   -(NSRange)rangeOfString:(NSString *)searchString;
 
   返回值是1个NSRange类型的结构体数据，代表子字符串在字符串中的范围
   typedef struct _NSRange{
     NSUInteger location;
     NSUInteger length;
   }NSRange;
 
  location:代表子字符串在主字符串中第1次出现的下标，如果没有找到，就将是最大值。
  length:代表了子字符串在主字符串中匹配的字符个数的长度，如果没有找到，则为0，如果找到了和子字符串的长度一致
   range.length
   只需判断返回的length长度是否为0即可
 
  如果没有找到 location 为NSUInteger的最大值，也就是NSNotFound
  length的值为0
 
  这个方法，是从前往后搜索，第1次匹配的子串
 
 10，在主串中搜索 从后往前
 -(NSRange)rangeOfString:(NSString *)searchString options:NSBackwardSearch;
   
 11.NSRange结构体
 
   1）。是Foundation框架中定义的1个结构体
       typedef struct _NSRange{
          NSUInteger location;
          NSUInteger length;
          }NSRange;
       NSRange range;
      这个结构体变量一般情况下用来表示1段范围。特别用在子串在主串中的范围表示。
      
  2）。声明并初始化结构体变量的方式
      1）最初始的方式。
          NSRange range;
          range.location = 3;
          range.location = 4;
     2)第二种方式：  NSRange range = {3,7}
     3)第三种方式： NSRange range = {.location = 3,.length = 7};
     
     4).Foundation框架中定义了1个函数。这个函数可以快速的创建1个NSRange结构体
        NSMakeRange(loc，len);
        返回一个指定属性的NSRange结构体变量
     
     5）Foundation框架中定义了一个函数 可以将1个NSRange结构体变量转换为NSString
        NSStringFromRange(ran) 函数可以讲NSRange结构体变量转换为指定格式的字符串
 
 
  12.字符串的截取
    -（NSString *)substringFromIndex:(NSUInteger)from; 从指定的下标一直截取到最后
    -（NSString *)substringToIndex:(NSUInteger)to;从第0个开始截取指定的个数
    -（NSString *)substringWithRange:(NSRange)range;截取指定的范围
 
  13.字符串的替换
    -（NSString *)stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement
    
    将字符串中第一个参数替换为第二个参数。原来的指针指向字符串的内容是不会变的 会将1全部替换为2
    新串是以方法的返回值返回的
 
 14.字符串类型转换为其他类型
    
  @property（readonly)double doubleValue;
  @property(readonly)float floatValue;
  @property(readonly)int intValue;
  @property(readonly)NSInteger integerValue
  @property(readonly)long long longLongValue
  @property(readonly)BOOL boolValue
 
   转换注意。从头开始转换，能转换多少是多少，到不能转换的时候停止转换
  NSString *str = @"";
  int num = str.intValue;
  NSLog(@"num = %d",num);
  a110->0 a不能转直接为0
 
 15.字符串的长度 length
 16.字符串前后去空格 str = [str stringByTrimmingCharactersInSet:[NSCharacterSet WhitespaceCharacterSet]];
 17.将字符串转换为大写字符串 str = [str uppercaseString];
 18.字符串小写转大写 lowercaseString
 19.去掉字符串前后的小写字母  str = [str stringByTrimmingCharactersInSet:[NSCharacterSet lowercaseLetterCharacterSet]];
 20.去掉字符串前后的大写字母  str = [str stringByTrimmingCharactersInSet:[NSCharacterSet uppercaseLetterCharacterSet]];
 21.去掉头尾指定的字符串 str = [str stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"jing"]];
 
 
 
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    
 //   NSString *str = @"文件读写";
    
//    NSError *err;
    
   // [str writeToFile:@"/Users/Itcast/Desktop/abc.txt" atomically:NO encoding:NSUTF8StringEncoding error:&err];
    
    NSError *err;
    
    NSString *str = [NSString stringWithContentsOfFile:@"/Users/Itcast/Desktop/1.txt" encoding:NSUTF8StringEncoding error:nil];
    
    if(err != nil)
    {
        //说明失败
    }
    else
        「
        NSLog(@"%@",str);
    
    return 0;
}
