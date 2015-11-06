//
//  ViewController.m
//  DesignPattern
//
//  Created by Albert (Jinku) Gu on 11/5/15.
//  Copyright (c) 2015 Albert.Gu. All rights reserved.
//

#import "ViewController.h"
#import "FactoryViewController.h"
#import "FactoryMethodViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openSimpleFactoryPattern:(id)sender {
    FactoryViewController *vc = [[FactoryViewController alloc] initWithNibName: @"FactoryViewController" bundle: nil];
    [self presentViewController: vc animated: YES completion:^{}];
}

- (IBAction)openFactoryMethodPattern:(id)sender {
    FactoryMethodViewController *vc = [[FactoryMethodViewController alloc] initWithNibName: @"FactoryMethodViewController" bundle: nil];
    [self presentViewController: vc animated: YES completion:^{}];
}
@end
