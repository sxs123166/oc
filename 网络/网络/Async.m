//
//  异步发送请求.m
//  网络
//
//  Created by DXM on 2022/7/25.
//

#import "Async.h"

@interface ______ ()

@end

@implementation ______

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //发送请求
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    //请求
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response,NSData *_Nullable data,NSError *_Nullable connectionError){
        
        if(!connectionError){
            NSString *html = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",html);
        }else{
            NSLog(@"连接错误 %@",connectionError);
        }
        
    }];
    //response 服务器返回的相应头
    //data     服务器返回的响应体
    //connectionError 连接错误
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
