//
//  SWVValidationStrategy.m
//  SWVValidation
//
//  Created by Kurt Edelbrock on 8/17/13.
//  Copyright (c) 2013 ScuttleWorks Ventures. All rights reserved.
//

#import "SWVValidationStrategy.h"

@implementation SWVValidationStrategy

#pragma mark - Constructors and Initializers

- (SWVValidationStrategy *)initWithBlock:(SWVValidationBlock)block
{
    self = [super init];
    if (self)
    {
        _block = block;
    }
    return self;
}

@end
