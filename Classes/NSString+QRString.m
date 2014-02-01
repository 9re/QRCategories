//
//  NSString+QRString.m
//  QROAuth
//
//  Created by Taro Kobayashi on 27/01/2014.
//  Copyright (c) 2014 Taro Kobayashi. All rights reserved.
//

#import "NSString+QRString.h"

@implementation NSString (QRString)


- (NSUInteger) indexOf: (NSString *)string
{
    return [self indexOf:string from:0];
}

- (NSUInteger) indexOf: (NSString *)string from:(NSUInteger) from;
{
    if (nil == string)
    {
        return NSNotFound;
    }
    NSUInteger length = [self length];
    if (length < from)
    {
        return NSNotFound;
    }
    return [self rangeOfString:string
                       options:0
                         range:NSMakeRange(from, length - from)].location;
}

@end
