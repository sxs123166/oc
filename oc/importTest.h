//
//  import指令.h
//  oc
//
//  Created by 被风吹落眼泪 on 2024/2/24.
//

#import <Foundation/Foundation.h>

/*
 #import指令
 1).以#开头，是一个预处理指令
 2）作用：是#include的增强版，将文件的内容在预编译的时候编写到指令的地方
 3）增强：同一个文件无论import多少次，只会包含一次
         如果#include指令要实现这个效果，就必须配合编译指令来实现
         而#import指令只要包含就可以，其他不需要做
 4）简要原理：#import指令在包含文件的时候，底层会先判断这个文件是否被包含，如果被包含就会略过，否则才会包含
 
 
 */

NS_ASSUME_NONNULL_BEGIN

@interface importTest : NSObject

@end

NS_ASSUME_NONNULL_END
