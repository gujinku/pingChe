//
//  OperationFactory.h
//  DesignPattern
//
//  Created by Albert (Jinku) Gu on 11/5/15.
//  Copyright (c) 2015 Albert.Gu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factory_Operation.h"

@interface OperationFactory : NSObject

+ (Factory_Operation *) createOperation: (NSString *)operateStr;

@end
