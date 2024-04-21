//
//  Person.m
//  单例模式
//
//  Created by DXM on 2022/7/20.
//

#import "Person.h"

@implementation Person

+（instancetype)allocWithZone:(struct _NSZone *)zone
{
    static id instance = nil;
    if(instance == nil)
    {
        instance = [super allocWithZone:zone];
    }
    return instance;
}

+(instancetype)sharedPerson
{
    return [self new];
}

+(instancetype)defaultPerson;
{
    return [self new];
}

@end
