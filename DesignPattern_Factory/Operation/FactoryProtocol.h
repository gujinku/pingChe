//
//  FactoryProtocol.h
//  DesignPattern_Factory
//
//  Created by Albert (Jinku) Gu on 11/6/15.
//  Copyright (c) 2015 Albert.Gu. All rights reserved.
//

#ifndef DesignPattern_Factory_FactoryProtocol_h
#define DesignPattern_Factory_FactoryProtocol_h

@class Factory_Operation;

@protocol FactoryProtocol <NSObject>

- (Factory_Operation *)createOperation;

@end

#endif
