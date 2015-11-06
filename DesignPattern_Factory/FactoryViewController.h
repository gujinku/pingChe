//
//  FactoryViewController.h
//  DesignPattern
//
//  Created by Albert (Jinku) Gu on 11/5/15.
//  Copyright (c) 2015 Albert.Gu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FactoryViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstNum;
@property (weak, nonatomic) IBOutlet UITextField *secondNum;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *multiplyButton;

- (IBAction)addOperation:(id)sender;
- (IBAction)multiplyOperation:(id)sender;
- (IBAction)backToMainView:(id)sender;

@end
