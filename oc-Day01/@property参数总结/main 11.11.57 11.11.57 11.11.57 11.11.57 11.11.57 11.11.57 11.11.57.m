//
//  main.m
//  @property参数总结
//
//  Created by DXM on 2022/7/17.
//

/*
  开发程序分为MRC和ARC
 
   与多线程相关的参数
    atomic:默认值 安全，但效率低下
    nonatomic:不安全，但是效率高
    
    无论在ARC和MRC都可以使用
    使用建议：无论是ARC还是MRC 都使用nonatomic
   
   retain：
     只能用在MRC的模式下，代表生成的setter方法是标准的内存管理代码
     当属性的类型是OC对象的时候。绝大多数情况下使用retain  只有在出现了循环引用的时候1边retain 一边assign
 
  assign:
     在ARC和MRC模式下都可以使用assign
     当属性的类型是非OC对象的时候 使用assign
  
  strong:
     只能使用在ARC机制下。当属性的类型是OC对象类型的时候，绝大多数情况下使用strong
     只有出现了循环引用时，一端strong，一端weak
 
  weak:
     只能使用在ARC机制下。当属性的类型是OC对象的时候， 只有出现了循环引用时，一端strong，一端weak
 
  readonly readwrite
     无论ARC还是MRC都可以使用
   setter getter 无论在ARC还是MRC下都可以改
 
   在ARC机制下，原来使用的retain用strong
   出现循环引用时。MRC:1边retain 一边assign ARC:一边strong 一边weak
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
