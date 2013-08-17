//
//  SWVValidationStrategyFactoryTests.m
//  SWVValidation
//
//  Created by Kurt Edelbrock on 8/17/13.
//  Copyright (c) 2013 ScuttleWorks Ventures. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SWVValidationStrategy.h"
#import "SWVNotNilValidationStrategy.h"

@interface SWVValidationStrategyFactoryTests : XCTestCase

@end

@implementation SWVValidationStrategyFactoryTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testNotNilFactory
{
    SWVValidationStrategy *validationStrategy = [SWVValidationStrategy validateNotNil];
    XCTAssertTrue([validationStrategy isKindOfClass:[SWVNotNilValidationStrategy class]]);
}

@end
