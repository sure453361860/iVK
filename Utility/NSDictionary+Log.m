//
//  NSDictionary+Log.m
//  HornCloud
//
//  Created by Akoo on 15/11/10.
//  Copyright (c) 2015年 袁明. All rights reserved.
//

#import "NSDictionary+Log.h"

@implementation NSDictionary (Log)


- (NSString *)descriptionWithLocale:(id)locale
{
        NSArray *allKeys = [self allKeys];
        NSMutableString *str = [[NSMutableString alloc] initWithFormat:@"{\t\n "];
         for (NSString *key in allKeys) {
                id value= self[key];
                 [str appendFormat:@"\t \"%@\" = %@,\n",key, value];
             }
        [str appendString:@"}"];
    
        return str;
     }
@end
