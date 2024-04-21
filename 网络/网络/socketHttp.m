//
//  socketHttp.m
//  网络
//
//  Created by DXM on 2022/7/26.
//

/*
 http1.0  短连接。当响应结束后连接会立即断开
 http1.1  长连接  当响应结束后，连接会等待非常短的时间，如果这个时间内没有新的请求，就断开连接
 */

#import "socketHttp.h"
#import <sys/socket.h>
#import <netinet/in.h>
#import <arpa/inet.h>
@interface socketHttp ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property(nonatomic,assign) int clientSocket;

@end

@implementation socketHttp

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //连接百度的服务器
    BOOL result = [self connect:@"61.135.169.125" port:80];
    if(!result){
        NSLog(@"连接失败");
        return;
    }
    NSLog(@"连接成功");
    
    //构造http请求头
    NSString *request = @"GET / HTTP/1.1\r\n"
                         "Host: www.baidu.com\r\n"
                          "User-Agent: Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1\r\n"
                         "Connection: close\r\n\r\n";
   
  
    //服务器返回的响应头
    NSString *response = [self sendAndRecv:request];
    NSLog(@"----%@",response);
    
    //关闭连接。http协议要求 请求结束后要关闭连接
    close(self.clientSocket);
    
    //截取响应头 响应头结束的表示\r\n\r\n<!
    //找到\r\n\r\n 的范围
    NSRange range = [response rangeOfString:@"\r\n\r\n"];
    //从\r\n\r\n之后的第一个位置开始截取字符串 响应体
    NSString *html = [response substringFromIndex:range.length + range.location];
    
    [self.webView loadHTMLString:html baseURL:[NSURL URLWithString:@"http://www.baidu.com"]];//baseURL:告诉图片等资源去哪里拿
    
    
    
}

-(BOOL) connect:(NSString *)ip port:(int)port{
    int clientSocket = socket(AF_INET,SOCK_STREAM,IPPROTO_TCP);
    self.clientSocket = clientSocket;
    
    struct sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = inet_addr(ip.UTF8String);
    addr.sin_port = htons(port);
    
    int result = connect(clientSocket, (const struct sockaddr *) &addr, sizeof(addr));
    if(result == 0){
        return YES;
    }else{
        return NO;
    }
}

-(NSString *)sendAndRecv:(NSString *)sendMsg{
    //3 向服务器发送数据
    //成功则返回实际传送出去的字符数，失败返回-1
    const char *msg = sendMsg.UTF8String;
    ssize_t sendCount = send(self.clientSocket, msg, strlen(msg), 0);
    NSLog(@"接收的字节数 %zd",sendCount);
    
    //4 接收服务器返回的数据
    //返回的是实际接收的字节个数
    uint8_t buffer[1024];
    
    NSMutableData *mData = [NSMutableData data];
    
    ssize_t recvCount = recv(self.clientSocket, buffer, sizeof(buffer), 0);
    [mData appendBytes:buffer length:recvCount];
    while (recvCount != 0){
        recvCount = recv(self.clientSocket, buffer, sizeof(buffer), 0);
        NSLog(@"发送的字节数 %zd",recvCount);
        [mData appendBytes:buffer length:recvCount];
    }
    
    
    //把字节数组转换成字符串
    NSString *reCVMsg = [[NSString alloc] initWithData:mData.copy encoding:NSUTF8StringEncoding];
    return reCVMsg;
    
    
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
