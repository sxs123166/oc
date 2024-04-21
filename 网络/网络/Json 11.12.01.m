//
//  Json.m
//  网络
//
//  Created by DXM on 2022/7/26.
//



#import "Json.h"

@interface Json ()

@end

@implementation Json

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *url = [NSURL URLWithString:@"http://127.0.0.1"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        if(connectionError){
            NSLog(@"连接错误%@",connectionError);
            return;
        }
        
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
        if(httpResponse.statusCode == 200 || httpResponse.statusCode == 304){
            //解析数据 data json形式的的字符串
            
            //JSON序列化 把对象转换成JSON形式的字符串
            //JSON的反序列化。把JSON形式的字符串转换成OC中的对象
            NSError *error;
            //解析的JSON字符串，返回的oc对象可能是数组或字典
            id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
            if(error){
                NSLog(@"解析JSON出错%@",error);
                return;
            }
            NSLog(@"%@",[json class]);
            //解析
            NSLog(@"--%@",[json[@"message"] class]);
            //NSJSONReadingMutableContainers = (1UL << 0),容器可变
            //NSJSONReadingMutableLeaves = (1UL << 1),容器可变，但是iOS7以后不起作用
            //NSJSONReadingAllowFragments = (1UL <<2) 允许不是JSON形式的字符串
        }else{
            NSLog(@"服务器内部错误");
        }
        
    }];
    
    
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
