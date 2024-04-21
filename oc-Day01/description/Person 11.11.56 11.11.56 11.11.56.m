//
//  Person.m
//  description
//
//  Created by DXM on 2022/7/14.
//

#import "Person.h"

@implementation Person

- (NSString *)description
{
    return [NSString stringWithFormat:@"姓名：%@ 年龄%d",_name,_age];
}

@end
