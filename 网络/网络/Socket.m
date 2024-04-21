//
//  Socket.m
//  网络
//
//  Created by DXM on 2022/7/25.
//

#import "Socket.h"
#import <sys/socket.h>
#import <netinet/in.h>
#import <arpa/inet.h>
@interface Socket ()

@end

@implementation Socket

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //1.创建socket
    //第一个参数 domin 协议粗 指定IPV4
    //第二个参数 type socket的类型 流socket  数据报socket
    //第三个参数 protocol
    
    //返回值 如果创建成功返回的是socket的描述符 失败-1
    int clientSocket = socket(AF_INET,SOCK_STREAM,IPPROTO_TCP);
    
    //2 连接服务器
    //第一个参数 socket的描述符
    //第二个参数 结构体 ip地址和端口
    //第三个参数 结构体的长度 sizeof
    //返回值 成功0 失败非0
    //addr.sin_family = AF_INET;
    //addr.sin_port = htons(PORT);
    //addr.sin_addr.s_addr = inet_addr("127.0.0.1");
    
    struct sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = inet_addr("127.0.0.1");
    addr.sin_port = htons(12345);
    
    int result = connect(clientSocket, (const struct sockaddr *) &addr, sizeof(addr));
//    if(result == 0){
//        NSLog(@"成功");
//    }else{
//        NSLog(@"失败");
//    }
    
    if(result != 0){
        NSLog(@"失败");
        return;
    }
    
    //3.向服务器发送数据
    const char *msg = "hello world";
    ssize_t sendCount = send(clientSocket, msg, strlen(msg), 0);//strlen计算的是字符数
    NSLog(@"发送的字节数");
    
    //4. 接受服务器返回的数据
    //返回的是实际接收的字节个数
    uint8_t buffer[1024];
    ssize_t recvCount = recv(clientSocket, buffer, sizeof(buffer), 0);
    NSLog(@"接收的字节数 %zd",recvCount);
    
    //把字节数组转换为字符串
    NSData *data = [NSData dataWithBytes:buffer length:recvCount];
    NSString *recvMsg = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"shoudao : %@",recvMsg);
    
    //5 关闭连接
    close(clientSocket);
    
    
    
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
