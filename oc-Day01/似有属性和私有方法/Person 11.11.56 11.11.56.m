//
//  Person.m
//  似有属性和私有方法
//
//  Created by DXM on 2022/7/14.
//

#import "Person.h"

@implementation Person
{
    NSString *_name;
    int _age;
}

-(void)pri
{
    self ->_age = 18;
    NSLog(@"私有方法");
}

-(void)getAge
{
    [self pri];
    NSLog(@"%d",_age);
}


@end
