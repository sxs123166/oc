//
//  getWebData.m
//  网络
//
//  Created by DXM on 2022/7/26.
//




#import "getWebData.h"

@interface getWebData ()

@end

@implementation getWebData

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //第一种方式。获取网络资源  无法设置请求头。无法控制缓存  无法设置超时时长
//    NSURL *url = [NSURL URLWithString:@"http://127.0.0.1/demo.json"];
//    NSData *data = [NSData dataWithContentsOfURL:url];
//    NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//    NSLog(@"%@",str);
    
    //NSURLRequestUseProtocolCachePolicy = 0,使用http协议的缓存策略
    //NSURLRequestReloadIgnoringCacheData = 1,忽略本地缓存 加载最新数据
    //NSURLRequestReturnCacheDataElseLoad = 2 如果有缓存，返回缓存数据，否则重新加载
    //NSURLRequestReturnCacheDataDontLoad = 3 返回缓存数据 没有缓存也不加载网络数据
    
    //第二种方式 获取网络数据
    NSURL *url = [NSURL URLWithString:@"http://127.0.0.1/demo.json"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:request cachePolicy:0 timeoutInterval:15];
    
    //默认缓存策略就是0   超时时长60秒
    //[NSMutableURLRequest requestWithURL:url];
    
    //设置请求头
    [request setValue:@"Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1" forKey:@"User-Agent"];
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *_Nullable response,NSData *_Nullable data,NSError *_Nullable connectionError){
        //获取服务器的响应体
        if(!connectionError){
           //判断是否正常接收到服务器返回的数据
            
            NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
            if(httpResponse.statusCode == 200 || httpResponse.statusCode == 304){
                
                NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                NSLog(@"--%@",str);
            }else{
                NSLog(@"服务器内部错误");
            }
        }else{
            NSLog(@"error: %@",connectionError);
        }
    }];

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.

*/
}
@end
