//
//  NSArray+Log.m
//  HornCloud
//
//  Created by 袁明 on 15/11/11.
//  Copyright (c) 2014年 Csst. All rights reserved.
//

#import "NSArray+Log.h"

@implementation NSArray (Log)

- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    
    for (id obj in self) {
        [strM appendFormat:@"\t%@,\n", obj];
    }
    
    [strM appendString:@")\n"];
    
    return strM;
}

@end
