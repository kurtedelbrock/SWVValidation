//
//  SWVValidationStrategy.m
//  SWVValidation
//
//  Created by Kurt Edelbrock on 8/17/13.
//  Copyright (c) 2013 ScuttleWorks Ventures. All rights reserved.
//

#import "SWVValidationStrategy.h"

@implementation SWVValidationStrategy

#pragma mark - Factory Methods

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

#pragma mark - Validators

- (BOOL)validate:(id)obj
{
    if (_block != nil)
        return _block(obj);
    else
    {
        NSLog(@"There was no block for validation to run against, so validate:(id)obj defaults to YES");
        return YES;
    }
}

@end
