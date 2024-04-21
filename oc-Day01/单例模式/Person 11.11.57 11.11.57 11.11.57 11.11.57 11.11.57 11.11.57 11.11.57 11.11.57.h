//
//  Person.h
//  单例模式
//
//  Created by DXM on 2022/7/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

+(instancetype)sharedPerson;
+(instancetype)defaultPerson;

@end

NS_ASSUME_NONNULL_END
