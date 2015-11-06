//
//  FactoryViewController.m
//  DesignPattern
//
//  Created by Albert (Jinku) Gu on 11/5/15.
//  Copyright (c) 2015 Albert.Gu. All rights reserved.
//

#import "FactoryViewController.h"
#import "OperationFactory.h"
#import "Factory_Operation.h"

@interface FactoryViewController ()

@end

@implementation FactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)addOperation:(id)sender {
    Factory_Operation *op = [OperationFactory createOperation: @"+"];
    op.firstNum = [self.firstNum.text doubleValue];
    op.secondNum = [self.secondNum.text doubleValue];
    
    self.resultLabel.text = [NSString stringWithFormat: @"%lf", [op getResult]];
}

- (IBAction)multiplyOperation:(id)sender {
    Factory_Operation *op = [OperationFactory createOperation: @"*"];
    op.firstNum = [self.firstNum.text doubleValue];
    op.secondNum = [self.secondNum.text doubleValue];
    
    self.resultLabel.text = [NSString stringWithFormat: @"%lf", [op getResult]];
}

- (IBAction)backToMainView:(id)sender {
    [self dismissViewControllerAnimated: YES completion:^{}];
}
@end
