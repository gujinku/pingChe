//
//  Factory_Operation.h
//  DesignPattern
//
//  Created by Albert (Jinku) Gu on 11/5/15.
//  Copyright (c) 2015 Albert.Gu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol OperationProtocol <NSObject>

- (double) getResult;

@end


@interface Factory_Operation : NSObject <OperationProtocol>

@property double firstNum;
@property double secondNum;

@end
