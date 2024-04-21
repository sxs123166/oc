//
//  Async-2.m
//  网络
//
//  Created by DXM on 2022/7/25.
//




//端口号：表示不同的进程

#import "Async-2.h"

@interface Async_2 ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;


@end

@implementation Async_2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //发送请求
    NSURL *url = [NSURL URLWithString:@"https://www.baidu.com"];
    //请求
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //发送异步请求
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response,NSData *_Nullable data,NSError *_Nullable connectionError){
        
        if(!connectionError){
            NSString *html = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@",html);
            
            //webView加载html
            [self.webView loadHTMLString:html baseURL:nil];
        }else{
            NSLog(@"连接错误 %@",connectionError);
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
