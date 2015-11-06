//
//  OperationFactory.m
//  DesignPattern
//
//  Created by Albert (Jinku) Gu on 11/5/15.
//  Copyright (c) 2015 Albert.Gu. All rights reserved.
//

#import "OperationFactory.h"
#import "OperationAdd.h"
#import "OperationMultiply.h"


@implementation OperationFactory

+ (Factory_Operation *) createOperation: (NSString *)operateStr;
{
    Factory_Operation *operation = nil;
    
    if ([operateStr isEqualToString: @"+"])
    {
        operation = [[OperationAdd alloc] init];
    }
    else if ([operateStr isEqualToString: @"*"])
    {
        operation = [[OperationMultiply alloc] init];
    }
    
    return operation;
}

@end
