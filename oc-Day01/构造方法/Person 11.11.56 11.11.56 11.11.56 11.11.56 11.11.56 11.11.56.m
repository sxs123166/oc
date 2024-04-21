//
//  Person.m
//  构造方法
//
//  Created by DXM on 2022/7/16.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithName:(NSString *)name andAge:(int)age andWeight:(float) weight andHeight:(float)height
{
    if(self = [super init])
    {
    self.name = name;
    self.height = height;
    self.age = age;
    self.weight = weight;
    }
    return self;
}

@end
