//
//  NSArray+QRMap.m
//  Pods
//
//  Created by Taro Kobayashi on 05/02/2014.
//
//

#import "NSArray+QRMap.h"

@implementation NSArray (QRMap)
- (NSArray *)map: (id (^)(id obj))block
{
    NSMutableArray *new = [NSMutableArray array];
    for(id obj in self)
    {
        id newObj = block(obj);
        [new addObject: newObj ? newObj : [NSNull null]];
    }
    return new;
}
@end
