//
//  FactoryMethodViewController.m
//  DesignPattern_Factory
//
//  Created by Albert (Jinku) Gu on 11/6/15.
//  Copyright (c) 2015 Albert.Gu. All rights reserved.
//

#import "FactoryMethodViewController.h"
#import "FactoryAdd.h"
#import "FactoryMultiply.h"
#import "Factory_Operation.h"

@interface FactoryMethodViewController ()

@end

@implementation FactoryMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addOperation:(id)sender {
    FactoryBase *factory = nil;
    factory = [[FactoryAdd alloc] init];
    
    Factory_Operation *op = [factory createOperation];
    op.firstNum = [self.firstNum.text doubleValue];
    op.secondNum = [self.secondNum.text doubleValue];
    
    self.resultLabel.text = [NSString stringWithFormat: @"%lf", [op getResult]];
}

- (IBAction)multiplyOperation:(id)sender {
    FactoryBase *factory = nil;
    factory = [[FactoryMultiply alloc] init];
    
    Factory_Operation *op = [factory createOperation];
    op.firstNum = [self.firstNum.text doubleValue];
    op.secondNum = [self.secondNum.text doubleValue];
    
    self.resultLabel.text = [NSString stringWithFormat: @"%lf", [op getResult]];
}

- (IBAction)backToMainView:(id)sender {
    [self dismissViewControllerAnimated: YES completion:^{}];
}

@end
