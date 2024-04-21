//
//  ViewController.m
//  oc-day03
//
//  Created by DXM on 2022/7/21.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,strong)NSArray *pic;

@property(nonatomic,assign) int index;
- (IBAction)next:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblIndex;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewIcon;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UIButton *btnNext;

@end

@implementation ViewController

//重写pic属性的get方法
//---懒加载---
-(NSArray *)pic
{
    if(_pic == nil){
        //写代码加载pic.plist文件中的数据到_pic
        //1.获取pic.plist文件的路径
        //获取pic.plist文件的路径赋值给path变量
        //【NSBundle mainBundle]表示获取这个app安装到手机上时的根目录
        //然后在app的安装的根目录下搜索pic。plist文件的路径
        NSString *path = [[NSBundle mainBundle] pathForResource:@"pic.plist" ofType:nil];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        _pic = array;
        NSLog(@"%@",array);
        
        NSLog(@"count:%ld",array.count);
    }
    return _pic;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)next:(id)sender {
    //1.让索引++
    self.index++;
    
    //2.从数卒中获取当前这张图片的数据
    NSDictionary *dict = self.pic[self.index];
    UIImage *img = [UIImage imageNamed:dict[@"icon"]];
    
    //3.把获取到的数据设置给页面上的控件
    self.imgViewIcon.image = img;
    
    //设置图片的标题
    self.lblTitle.text = dict[@"title"];
    
}



@end
