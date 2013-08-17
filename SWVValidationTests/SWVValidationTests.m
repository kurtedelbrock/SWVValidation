//
//  SWVValidationTests.m
//  SWVValidationTests
//
//  Created by Kurt Edelbrock on 8/17/13.
//  Copyright (c) 2013 ScuttleWorks Ventures. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SWVValidationStrategy.h"

@interface SWVValidationTests : XCTestCase

@end

@implementation SWVValidationTests

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

- (void)testConstructorCanSetBlock
{
    SWVValidationBlock testBlock = ^BOOL(id obj){
        return YES;
    };
    SWVValidationStrategy *validationStrategy = [[SWVValidationStrategy alloc] initWithBlock:testBlock];
    
    XCTAssertNotNil(validationStrategy.block);
}

- (void)testValidationDefaultResponse
{
    SWVValidationStrategy *validationStrategy = [[SWVValidationStrategy alloc] initWithBlock:nil];
    BOOL valid = [validationStrategy validate:@"testme"];
    
    XCTAssertTrue(valid == YES);
}

@end
