//
//  AGBitOperationsTest.m
//  AGGeometryKit
//
//  Created by Håvard Fossli on 12.12.13.
//  Copyright 2013 Håvard Fossli. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "AGBitOperations.h"

@interface AGBitOperationsTest : SenTestCase

@end

@implementation AGBitOperationsTest

- (void)testBIT_TEST_ALL
{
    int a = 0;
    STAssertFalse(BIT_TEST_ALL(a, 1 << 5), nil);

    BIT_SET(a, 1 << 5);
    STAssertTrue(BIT_TEST_ALL(a, 1 << 5), nil);

    BIT_CLEAR(a, 1 << 5);
    STAssertFalse(BIT_TEST_ALL(a, 1 << 5), nil);
}

@end
