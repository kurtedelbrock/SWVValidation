//
//  SWVNotNilValidationStrategyTests.m
//  SWVValidation
//
//  Created by Kurt Edelbrock on 8/17/13.
//  Copyright (c) 2013 ScuttleWorks Ventures. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SWVNotNilValidationStrategy.h"

@interface SWVNotNilValidationStrategyTests : XCTestCase

@end

@implementation SWVNotNilValidationStrategyTests

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

- (void)testNilFailsValidation
{
    SWVNotNilValidationStrategy *validationStrategy = [[SWVNotNilValidationStrategy alloc] init];
    
    BOOL valid = [validationStrategy validate:nil];
    
    XCTAssertTrue(valid == NO);
}

- (void)testNSNullFailsValidation
{
    SWVNotNilValidationStrategy *validationStrategy = [[SWVNotNilValidationStrategy alloc] init];
    
    BOOL valid = [validationStrategy validate:[NSNull null]];
    
    XCTAssertTrue(valid == NO);
}

- (void)testAnythingElsePassesValidation
{
    SWVNotNilValidationStrategy *validationStrategy = [[SWVNotNilValidationStrategy alloc] init];
    
    BOOL valid = [validationStrategy validate:@""];
    
    XCTAssertTrue(valid == YES);
}

@end
