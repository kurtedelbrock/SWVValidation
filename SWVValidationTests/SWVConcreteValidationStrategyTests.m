//
//  SWVConcreteValidationStrategyTests.m
//  SWVValidation
//
//  Created by Kurt Edelbrock on 8/17/13.
//  Copyright (c) 2013 ScuttleWorks Ventures. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SWVConcreteValidationStrategy.h"

@interface SWVConcreteValidationStrategyTests : XCTestCase

@end

@implementation SWVConcreteValidationStrategyTests

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

- (void)testBlocksAreNotSupported
{
    SWVValidationBlock testBlock = ^BOOL(id obj){
        return YES;
    };
    
    SWVConcreteValidationStrategy *validationStrategy = [[SWVConcreteValidationStrategy alloc] initWithBlock:testBlock];
    XCTAssertTrue(validationStrategy.block == nil);
}

@end
