//
//  ViewController.h
//  Divisas
//
//  Created by alumno on 15/01/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *tfTipoCambio;

@property (strong, nonatomic) IBOutlet UITextField *tfPesos;

@property (strong, nonatomic) IBOutlet UITextField *tfDolares;

- (IBAction)botonCalcular:(id)sender;


@end

