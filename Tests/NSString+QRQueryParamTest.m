//
//  NSString+QRQueryParamTest.m
//  QRCategories
//
//  Created by Taro Kobayashi on 01/02/2014.
//  Copyright (c) 2014 Taro Kobayashi. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+QRQueryParam.h"

@interface NSString_QRQueryParamTest : XCTestCase
@end

@implementation NSString_QRQueryParamTest

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testNil
{
    NSString *nilStr = nil;
    NSDictionary *dict = [nilStr parseAsQueryParam];
    XCTAssertNil(dict, @"nil value");
}

- (void)testSimple
{
    NSDictionary *dict = [@"test=ok&debug=false" parseAsQueryParam];
    XCTAssertTrue([@"ok" isEqualToString:[dict valueForKey:@"test"]]);
    XCTAssertTrue([@"false" isEqualToString:[dict valueForKey:@"debug"]]);
}

@end
