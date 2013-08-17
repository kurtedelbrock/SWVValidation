//
//  SWVValidationStrategy.h
//  SWVValidation
//
//  Created by Kurt Edelbrock on 8/17/13.
//  Copyright (c) 2013 ScuttleWorks Ventures. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SWVValidationStrategy : NSObject

/**
 * Typedefs
 */

typedef BOOL(^SWVValidationBlock)(id obj);

/**
 * Methods
 */

- (SWVValidationStrategy *)initWithBlock:(SWVValidationBlock)block;

- (BOOL)validate:(id)obj;

/**
 * Properties
 */

@property (copy, readonly) SWVValidationBlock block;

@end
