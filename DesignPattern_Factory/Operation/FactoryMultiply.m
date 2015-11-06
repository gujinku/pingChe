//
//  FactoryMultiply.m
//  DesignPattern_Factory
//
//  Created by Albert (Jinku) Gu on 11/6/15.
//  Copyright (c) 2015 Albert.Gu. All rights reserved.
//

#import "FactoryMultiply.h"
#import "OperationMultiply.h"

@implementation FactoryMultiply

- (Factory_Operation *) createOperation
{
    return [[OperationMultiply alloc] init];
}

@end
