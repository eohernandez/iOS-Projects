//
//  ViewController.m
//  Divisas
//
//  Created by Enrique O. Hernandez A01185423 on 15/01/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(quitaTeclado)];
    [self.view addGestureRecognizer: tap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) quitaTeclado{
    
    [self.view endEditing:YES];
    
}
- (IBAction)botonCalcular:(id)sender {
    
    if (![self.tfTipoCambio.text isEqualToString:@""]&&![self.tfPesos.text isEqualToString:@""]) {
        
        CGFloat cambio = [self.tfTipoCambio.text doubleValue];
        CGFloat pesos = [self.tfPesos.text doubleValue];
        
        self.tfDolares.text = [[NSString alloc] initWithFormat: @"%f", pesos/cambio];
        
        [self quitaTeclado];
        
    }
    else {
        
        UIAlertView *alerta = [[UIAlertView alloc] initWithTitle: @"Favor de ingresar un numero"
                                                         message: nil
                                                        delegate: self
                                               cancelButtonTitle: @"OK"
                                               otherButtonTitles:nil];
        [alerta show];
    }
   
    
}
@end
