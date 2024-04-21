//
//  NSArray+Ex.m
//  网络
//
//  Created by DXM on 2022/7/26.
//

#import "NSArray+Ex.h"

@implementation NSArray (Ex)
- (NSString *)descriptionWithLocale:(id)locale{
    NSMutableString *mStr = [NSMutableString string];
    [mStr appendString:@"(\r\n"];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [mStr appendFormat:@"\t%@,\r\n",obj];
    }];
    
    [mStr appendString:@")"];
    return mStr.copy;
}
@end
