//
//  SWVConcreteValidationStrategy.m
//  SWVValidation
//
//  Created by Kurt Edelbrock on 8/17/13.
//  Copyright (c) 2013 ScuttleWorks Ventures. All rights reserved.
//

#import "SWVConcreteValidationStrategy.h"

@implementation SWVConcreteValidationStrategy

- (SWVValidationStrategy *)initWithBlock:(SWVValidationBlock)block
{
    // Specific subclasses of SWVValidationStrategy ignore support for block-based validation
    
    self = [super init];
    if (self)
    {
        
    }
    return self;
}

@end
