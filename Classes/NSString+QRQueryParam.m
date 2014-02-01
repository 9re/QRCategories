//
//  NSString+QRQueryParam.m
//
//  Created by Taro Kobayashi on 27/01/2014.
//  Copyright (c) 2014 Taro Kobayashi. All rights reserved.
//

#import "NSString+QRQueryParam.h"

@implementation NSString (QRQueryParam)
- (NSDictionary *) parseAsQueryParam
{
    NSArray *keyValues = [self componentsSeparatedByString:@"&"];
    NSMutableDictionary *params = [[NSMutableDictionary alloc] initWithCapacity:[keyValues count]];
    for (id keyValue in keyValues) {
        NSArray *kvArr = [((NSString *)keyValue) componentsSeparatedByString:@"="];
        if ([kvArr count] == 2)
        {
            [params setObject:[kvArr objectAtIndex:1] forKey:[kvArr objectAtIndex:0]];
        }
    }
    return params;
}
@end
