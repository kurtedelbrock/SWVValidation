//
//  SWVNotNilValidationStrategy.m
//  SWVValidation
//
//  Created by Kurt Edelbrock on 8/17/13.
//  Copyright (c) 2013 ScuttleWorks Ventures. All rights reserved.
//

#import "SWVNotNilValidationStrategy.h"

@implementation SWVNotNilValidationStrategy

- (BOOL)validate:(id)obj
{
    if (obj == nil || obj == [NSNull null])
        return NO;
    else
        return YES;
}

@end
