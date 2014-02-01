//
//  NSString+QRString.h
//  QROAuth
//
//  Created by Taro Kobayashi on 27/01/2014.
//  Copyright (c) 2014 Taro Kobayashi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (QRString)
- (NSUInteger) indexOf: (NSString *)string;
- (NSUInteger) indexOf: (NSString *)string from:(NSUInteger) from;
@end
