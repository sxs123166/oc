//
//  Person.h
//  @property
//
//  Created by DXM on 2022/7/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    NSString *_name;
    int _age;
}

@property int age;//自动生成get和set方法的声明
@end

NS_ASSUME_NONNULL_END
