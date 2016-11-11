//
//  NetClient.m
//  iVK
//
//  Created by Sure on 16/6/6.
//  Copyright © 2016年 eterner. All rights reserved.
//

#import "NetClient.h"

@implementation NetClient

/*接口功能：获取客户端实例
 接口参数：无
 接口返回：客户端实例
 */
- (id) init
{
    self = [super init];
    if (nil != self) {
    }
    return self;
}


/*接口功能：获取个股信息
 接口参数：
 接口返回：大于等于0表示成功，负值表示错误码
 */
- (int) GetStockInfo: (NSString*) stockID response : (NSData*) responseData
{
    int ret = [self requestData:nil respose:&responseData];
    NSLog(@"ret : %d",ret);
    return ret;
}

-(int)requestData:(NSString*)code respose:(NSData **)responserData{
    
    __block int iRet = -1;
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/css",@"application/xhtml+xml",@"text/plain",@"application/x-javascript", nil];
    manager.responseSerializer.stringEncoding = NSUnicodeStringEncoding;
    
    
    [manager GET:@"http://hq.sinajs.cn/list=sh600389" parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSData *data = responseObject;
        *responserData = data;

        iRet = 0;
//        //声明一个gbk编码类型
//        NSStringEncoding gbkEncoding = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
//        //使用如下方法 将获取到的数据按照gbkEncoding的方式进行编码，结果将是正常的汉字
//        NSString *retString = [[NSString alloc] initWithData:data encoding:gbkEncoding];
//        NSArray *array = [retString componentsSeparatedByString:@","];
        NSLog(@"成功3:%@",*responserData);
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"失败：%@",error);
        iRet = -1;
    }];
    
    return iRet;

    
}

@end
