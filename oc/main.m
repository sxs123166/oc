//
//  main.m
//  oc
//
//  Created by 被风吹落眼泪 on 2024/2/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        id __strong obj = [[NSObject alloc] init];
        //        id __weak o = obj;
        //        NSLog(@"1 %@", o);
        //        NSLog(@"2 %@", o);
        //        NSLog(@"3 %@", o);
        //        NSLog(@"4 %@", o);
        //        NSLog(@"5 %@", o);
//        NSLog(@"");
//        id __weak o = obj;
//        NSLog(@"");
        
//        dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//        dispatch_group_t group = dispatch_group_create();
//
//        dispatch_group_async(group, queue, ^{
//            NSLog(@"bl0");
//        });
//        dispatch_group_async(group, queue, ^{
//            NSLog(@"bl1");
//        });
//        dispatch_group_async(group, queue, ^{
//            NSLog(@"bl2");
//        });
//
//        dispatch_group_notify(group, dispatch_get_main_queue(), ^{
//            NSLog(@"done");
//        });
        
        CGSize s1 = CGSizeMake(100, 10);
        CGSize s2 = CGSizeMake(100, 10);
        CGSize s3 = CGSizeMake(100, 10);
        CGSize s4 = CGSizeMake(100, 10);
        
        NSValue *v1 = [NSValue valueWithSize:s1];
        NSValue *v2 = [NSValue valueWithSize:s2];
        NSValue *v3 = [NSValue valueWithSize:s3];
        NSValue *v4 = [NSValue valueWithSize:s4];
        
        NSArray *arr = @[v1,v2,v3,v4];
        
        for(NSValue *v in arr)
        {
            NSLog(@"%@",NSStringFromSize(v.sizeValue));
        }
    }
    return 0;
}
