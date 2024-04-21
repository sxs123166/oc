//
//  main.m
//  常用结构体
//
//  Created by DXM on 2022/7/19.
//

/*
 在Foundation框架中，已经定义了1个结构体CGPoint
 
 struct CGPoint {
  CGFloat x;
  CGFloat y;
  };
  typedef struct CGPoint CGPoint;
  CGPoint类型的实际上就是1个double类型的
  
  这个结构体一般情况下是用来表示坐标的。用来表示控件在界面上的位置
  CGPoint与NSPoint都是同1个结构体，只不过定义两个名字
  typedef CGPoint NSPoint
  
  --------声明CGPoint变量并初始化的方式-------
  1）。CGPoint p1;
      p1.x = 20;
      p1.y = 30;
 2). CGPoint p1 = {20.30}
  
 3).CGPoint p1 = {.x=20,.y=30};
 
 4).Foundation框架中提供的函数来快速的创建1个CGPoint变量
    a.CGPointMake(x,y);
      CGPoint p1 = CGPointMake(20,30);
    b.NSMakePoint(x,y);
      NSPoint p2 = NSMakePoint(20,30);
 
 2.声明1个变量来保存某个控件的大小
   1个控件的大小，无非就是两个数据。高度，宽度
   typedef struct
   {
       double width;
       double height;
    }CZSize;
 
  typedef struct CGSize CGSize;
  typedef CGSize  NSSize;
  NSSize和CGSize是同一个结构体，只不过定义了两个名称
  CGSize 结构体一般情况下用来表示控件的大小
   
   -----CGSize声明并初始化的方式------
   1）。CGSize size;
       size.width = 100;
       size.height = 30;
   2).CGSize size = {100,30};
   3).CGSize size = {.width = 100, .height = 30};
 
    4).Foundation框架中提供了函数用来快速的得到1个CGSize结构体变量
      a.CGSizeMake(width,height);
        CGSize size0  = CGSizeMake(100,30);
     b.NSMakeSize(w,h)
        CGSize size1 = NSMakeSize(100,30);
 
 
 3.CGRect和NSRect
    这是定义在Foundation框架中的结构体
       struct CGRect {
          CGPoint origin;
          CGSize size;
       };
     typedef struct CGRect CGRect;
    所以，这个结构体变量一般情况下存储1个控件的位置和大小
    typedef CGRect NSRect;
    NSRect和CGRect是一样的
    -------CGRecr-------
    1）。
      CGRect rect;
      rect.origin.x = 20;
      rect.origin.y = 40;
      rect.size.width = 100;
      rect.size.height = 30;
 
      当结构体作为另外1个结构体或者对象的1个属性的时候，不能直接{}赋值
      
    2）。提供了函数快速的创建
        CGRect rect = CGRectMake(10,20,30,40);
        CGRect rect1 = NSMakeRect(10,20,100,30);
        
        
 
 
 */


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
