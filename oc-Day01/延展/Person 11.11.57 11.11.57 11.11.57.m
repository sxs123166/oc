//
//  Person.m
//  延展
//
//  Created by DXM on 2022/7/17.
//

#import "Person.h"

@interface Person()
{
    NSString *_name;
}

@property(nonatomic,assign)int age;

-(void) study;

@implementation Person

-(void) study
{
    NSLog(@"123"); 
}


@end
