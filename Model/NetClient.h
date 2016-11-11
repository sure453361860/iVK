//
//  NetClient.h
//  iVK
//
//  Created by Sure on 16/6/6.
//  Copyright © 2016年 eterner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetClient : NSObject



/*接口功能：获取个股信息
 接口参数：
 接口返回：大于等于0表示成功，负值表示错误码
 */
- (int) GetStockInfo: (NSString*) stockID response : (NSData*) responseData;
@end
