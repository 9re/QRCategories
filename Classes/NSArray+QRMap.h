//
//  NSArray+QRMap.h
//  Pods
//
//  Created by Taro Kobayashi on 05/02/2014.
//
//

#import <Foundation/Foundation.h>

@interface NSArray (QRMap)
- (NSArray *)map: (id (^)(id obj))block;
@end
