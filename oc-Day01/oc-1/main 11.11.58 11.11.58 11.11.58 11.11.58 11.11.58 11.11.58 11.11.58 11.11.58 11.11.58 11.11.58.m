//
//  main.m
//  oc-1
//
//  Created by DXM on 2022/7/11.
//

#import <Foundation/Foundation.h>
void test();

int main(int argc, const char * argv[])
 {
    @autoreleasepool {  //自动释放池
        // insert code here...
        float a= 12.1f;
        NSString *str = @"str";
        NSLog(@"oc第一个程序");  //NSLog
        NSLog(@"%f",a);
        NSLog(str);
        NSLog(@"%@",str);
        test();
    }
    return 0;
}
void test(){
    
    NSLog(@"函数");
    
}
