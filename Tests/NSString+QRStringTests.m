//
//  NSString+QRStringTests.m
//  QRCategories
//
//  Created by Taro Kobayashi on 01/02/2014.
//  Copyright (c) 2014 Taro Kobayashi. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+QRString.h"

@interface NSString_QRStringTests : XCTestCase

@end

@implementation NSString_QRStringTests

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
    NSString *nilValue = nil;
    NSString *toFind = @"toFind";
    NSString *nonNil = @"non-nil";
    {
        NSUInteger indexAt = [nilValue indexOf: toFind];
        // If the value is nil the message indexOf won't be sent
        // to the category. so using this category to the string
        // which might be null is very confusing and hence
        // should be avoided.
        XCTAssertTrue(0 == indexAt);
    }
    
    {
        NSUInteger indexAt = [nonNil indexOf:nil];
        XCTAssertTrue(NSNotFound == indexAt);
    }
}

- (void)testSimple
{
    NSString *string = @"Vanitas vanitatum omnia vanitas";
    NSString *toFind = @"anit";
    
    NSUInteger indexAt = NSNotFound;
    // find the first
    indexAt = [string indexOf:toFind];
    XCTAssertTrue(1 == indexAt);
    // same
    indexAt = [string indexOf:toFind from:indexAt];
    XCTAssertTrue(1 == indexAt);
    // next
    indexAt = [string indexOf:toFind from:++indexAt];
    XCTAssertTrue(9 == indexAt);
    // next
    indexAt = [string indexOf:toFind from:++indexAt];
    XCTAssertTrue(25 == indexAt);
    // finally
    indexAt = [string indexOf:toFind from:++indexAt];
    XCTAssertTrue(NSNotFound == indexAt);
    // try edge casees
    indexAt = [string indexOf:toFind from:[string length]];
    XCTAssertTrue(NSNotFound == indexAt);
    indexAt = [string indexOf:toFind from:[string length] + 1];
    XCTAssertTrue(NSNotFound == indexAt);
}

@end
