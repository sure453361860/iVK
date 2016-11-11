//
//  ViewController.m
//  iVK
//
//  Created by Sure on 16/6/5.
//  Copyright © 2016年 eterner. All rights reserved.
//

#import "ViewController.h"
#import "NetClient.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSData *data;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NetClient *network = [[NetClient alloc] init];
    data = [NSData new];
    if(![network GetStockInfo:nil response:data]){
        NSLog(@"vk : %@",data);
    }else{
        NSLog(@"vk fail1: %@",data);
    }
    

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100, 100, 44, 44);
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
//    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/css",@"application/xhtml+xml",@"text/plain",@"application/x-javascript", nil];
//    manager.responseSerializer.stringEncoding = NSUnicodeStringEncoding;
//    
//
//    [manager GET:@"http://hq.sinajs.cn/list=sh600389" parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
//        
//    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSData *data = responseObject;
//        //声明一个gbk编码类型
//        NSStringEncoding gbkEncoding = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
//        //使用如下方法 将获取到的数据按照gbkEncoding的方式进行编码，结果将是正常的汉字
//        NSString *retString = [[NSString alloc] initWithData:data encoding:gbkEncoding];
//        NSArray *array = [retString componentsSeparatedByString:@","];
//        NSLog(@"成功3:%@",array);
//
//
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        NSLog(@"失败：%@",error);
//    }];

}
-(void)buttonPressed{
    NSLog(@"vk %s : %@",__func__,data);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
