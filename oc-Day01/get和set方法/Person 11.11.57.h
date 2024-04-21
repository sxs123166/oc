//
//  Person.h
//  get和set方法
//
//  Created by DXM on 2022/7/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    NSString *_name;
    int _age;
}

-(void)setAge:(int)age;
-(int)getAge;
@end

NS_ASSUME_NONNULL_END
