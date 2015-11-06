//
//  FactoryAdd.m
//  DesignPattern_Factory
//
//  Created by Albert (Jinku) Gu on 11/6/15.
//  Copyright (c) 2015 Albert.Gu. All rights reserved.
//

#import "FactoryAdd.h"
#import "OperationAdd.h"

@implementation FactoryAdd

- (Factory_Operation *) createOperation
{
    return [[OperationAdd alloc] init];
}

@end
