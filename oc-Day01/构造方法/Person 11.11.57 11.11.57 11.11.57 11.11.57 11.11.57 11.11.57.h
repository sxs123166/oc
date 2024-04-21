//
//  Person.h
//  构造方法
//
//  Created by DXM on 2022/7/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property  NSString *name;
@property  int age;
@property  float weight;
@property  float height;

-(instancetype)initWithName:(NSString *)name andAge:(int)age andWeight:(float) weight andHeight:(float) height;
@end

NS_ASSUME_NONNULL_END
