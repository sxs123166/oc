//
//  Socket_example.m
//  网络
//
//  Created by DXM on 2022/7/25.
//

#import "Socket_example.h"
#import <sys/socket.h>
#import <netinet/in.h>
#import <arpa/inet.h>

@interface Socket_example ()

@property (weak, nonatomic) IBOutlet UITextField *ipView;

@property (weak, nonatomic) IBOutlet UITextField *portView;

@property (weak, nonatomic) IBOutlet UITextField *sendMsgView;

@property (weak, nonatomic) IBOutlet UILabel *recvMsgView;
@property(nonatomic,assign) int clientSocket;
@end

@implementation Socket_example

- (IBAction)connectClick:(id)sender {
    [self connect:self.ipView.text port:[self.portView.text intValue]];
}

- (IBAction)sendClick:(id)sender {
    self.recvMsgView.text = [self sendAndRecv:self.sendMsgView.text];
}

- (IBAction)closeClick:(id)sender {
    close(self.clientSocket);
    NSLog(@"关闭连接");
}

//1.连接服务器
-(BOOL)connect:(NSString *)ip port:(int)port{
    
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
//2.发送和接收数据
-(NSString *)sendAndRecv:(NSString *)sendMsg{
    //3 向服务器发送数据
    //成功则返回实际传送出去的字符数，失败返回-1
    const char *msg = sendMsg.UTF8String;
    ssize_t sendCount = send(self.clientSocket, msg, strlen(msg), 0);
    NSLog(@"接收的字节数 %zd",sendCount);
    
    //4 接收服务器返回的数据
    //返回的是实际接收的字节个数
    uint8_t buffer[1024];
    ssize_t recvCount = recv(self.clientSocket, buffer, sizeof(buffer), 0);
    NSLog(@"发送的字节数 %zd",recvCount);
    
    //把字节数组转换成字符串
    NSData *data = [NSData dataWithBytes:buffer length:recvCount];
    NSString *reCVMsg = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return reCVMsg;
    
    
}



@end
