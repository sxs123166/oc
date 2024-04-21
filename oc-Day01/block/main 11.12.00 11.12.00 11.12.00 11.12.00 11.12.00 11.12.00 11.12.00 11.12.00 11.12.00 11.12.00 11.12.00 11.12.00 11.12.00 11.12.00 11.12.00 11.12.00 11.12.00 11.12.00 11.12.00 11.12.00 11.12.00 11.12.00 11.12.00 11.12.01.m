//
//  main.m
//  block
//
//  Created by DXM on 2022/7/18.
//

/* OC在c的基础上新增了一些数据类型
   BOOL
   Boolean
   class
   nil
   SEL
   id
   block
  
   block是1个数据类型
   block类型的变量中专门存储1段代码，可以声明一个block变量的声明。这段代码可以有参数 可以有返回值
   一旦之指定以后，这个block变量中就只能存储这样的代码了
   
   声明了1个block变量。返回值是void 参数是1个int类型的
   这个时候。这个block变量中就只能存储无返回值并且有1个int参数的代码段
   
   声明block变量的语法格式：
     返回值类型（^block变量名称)(参数列表）；
     void（^myblock1)();表示表明了1个block类型的变量叫做myBlock1 这个变量中只能存储没有返回值没有参数的代码段。
     int(^myBlock2)();
     int (^myBlock3)(int num1,int nums2);
 
  初始化block变量
    1）。原理：写一个符合block要求的代码段。存储到block变量中就可以了。
    2）。代码段的书写格式：
           ^返回值类型（参数列表）{
               代码段；
            }；
      
   3).写一个无参数无返回值的代码段。
       
        ^void(){
          NSLog(@"我爱你");
         }
     
     这个时候，我们就可以将这段代码使用夫之妇好存储到 无返回值无参数要求的的block变量
     void （^myBlock1)();
  
     myBlock1 = ^void(){
       NSLog(@"我还好")；
     };
     也可以这么写
    void myBlock1 = ^void(){
         NSLog(@"我还好")；
     };
     
   4)有返回值的代码段
      ^int(){
         int num1 = 10+20;
         return num1;
      };
      我们就可以将这段代码复制给符合要求的block 变量
        int (^myBlock2)() = ^int(){
           int num1 = 10+ 20;
           return num1;
        };
 
 5).即有参数又有返回值的代码
    int (^myBlock3)(int num1,int num2) =
   ^int(int num1,int num2){
       int num3= num1 +num2
       return num3;
    };
 
  6)注意
     赋值给block变量的代码必须要符合block变量的要求。否则就会报错。
     
  5.如何执行存储在block变量中的代码段
    
     语法格式：block变量名
    
     myBlock1();
    
     int (^myBlock2)() = ^int(){
         int num1 = 10+ 20;
         return num1;
      };
     
     int sum = myBlock2();
     NSLog(@"sum = %d",sum);
    
     int res = myBlock3(10,100);
     NSLog(@"res = %d",res);
    
     
  6.关于block的缩写
    1）。代码段的返回值如果是void可以省略，声明block变量的返回值无论是什么都不可以省略。
   
    2）。如果我们写的代码段没有参数，那么代码段的小括弧可以省略。
        int (^myBlock2)() = ^int{
           ……
        }；
            
    3）声明block变量如果有指定的参数，可以只写参数的类型而不写参数的名称（注意是声明的时候
     int (^myBlock3)(int ,int ) =
      ^int(int num1,int num2){
       int num3= num1 +num2
       return num3;
       };
 
    4）。无论代码段是否有返回值。在写代码的时候。可以不写返回值类型 省略。
        如果在写代码段的时候，省略了返回值，这个时候系统会自动的确定返回值的类型。
        
        如果代码段中没有任何的返回数据 那么他会认为这个代码段是没有返回值的。
        如果代码段中有返回数据 返回的数据是什么类型 那他就会认为这个代码段是什么类型的
 
   建议：仍然按照我们最标准的写法来写block变量和block代码段。 因为这样可以提高代码的阅读性
 
 
  7.简化block变量的复杂定义
     typedef使用场景：将1个长类型定义为短类型
     我们也可以使用typdef将长的block类型 定义为1个短类型
      
        typedef  返回值类型 （^新类型）（参数列表）;
        typedef void (^NewType)();代表重新定义了1个类型叫做NewType 是一个block类型 无参数无返回值的block类型
        NewType block1;
        NewType block2;
 
 
       typedef int (^NewType2)(int num1,int num2);
       NewType2 t1 = ^int(int num1,int num2){
            
           int num3 = num1 + num2;
           return num3;
       };
 
 
  8.关于block块访问外部变量的问题。
    1）在block代码块的内部可以取定义在外部变量的值，定义在外部的局部变量和全局变量。
    2）在block代码块的内部可以修改全局变量的值。但是不能修改定义在外部的局部变量的值。
    3）如果希望定义的局部变量可以允许在block代码的内部去修改，那么就为这个局部变量加一个__block的修饰符
 
 */



#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        void （^myBlock1)();
         
        myBlock1 = ^void(){
            NSLog(@"我还好")；
        };
        
        
    }
    return 0;
}
