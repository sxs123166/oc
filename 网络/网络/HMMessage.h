//
//  HMMessage.h
//  网络
//
//  Created by DXM on 2022/7/27.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface HMMessage : UIViewController

@property(nonatomic,copy) NSString *message;
@property(nonatomic,assign) int messageId;
+(instancetype)messageWithDic:(NSDictionary *)dic;
@end

NS_ASSUME_NONNULL_END
