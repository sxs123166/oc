//
//  main.m
//  ARC机制下多个对象的内存管理
//
//  Created by DXM on 2022/7/17.
//

/*
  1.在ARC机制下，我们关注的重点。
    当一个类的属性是1个OC对象的时候。这个属性应声名为强类型的
    
    如何控制@property生成的私有属性，
    使用参数，strong和weak
    @property(nonatomic,weak)Car *car;
    代表生成的私有属性_car 是一个强类型的
    @property(nonatomic,weak)Car *car;
    代表生成的私有属性_car 是一个弱类型的
 
    如果不写 默认是strong.
  
  2.使用建议
    1）。在ARC机制下。如果属性的类型是OC对象类型的。绝大多数场景下使用strong
    2）。在ARC机制下。如果属性的类型不是OC对象类型的。使用assign
    3）。strong和weak都是应用在属性的类型是oc对象的时候，属性的类型不是OC对象类型的。使用assign。
        
        在ARC机制下，将MRC下的retain换位为strong
    
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
