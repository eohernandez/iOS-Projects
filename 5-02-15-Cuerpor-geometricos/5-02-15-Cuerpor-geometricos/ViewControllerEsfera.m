//
//  ViewControllerEsfera.m
//  5-02-15-Cuerpor-geometricos
//
//  Created by alumno on 05/02/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewControllerEsfera.h"
#import "ViewController.h"
#include <math.h>

@interface ViewControllerEsfera ()

@end

@implementation ViewControllerEsfera

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(quitaTeclado)];
    [self.view addGestureRecognizer: tap];
    
}
- (void) quitaTeclado{
    
    [self.view endEditing:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    ViewController *viewIni = [segue destinationViewController];

    
    if (sender == self.bGuardar) {
            NSString *radio = [NSString stringWithFormat: @"Radio = %@", self.tRadio.text];
        
        double volumen = ((1.333333333) * M_PI * pow([self.tRadio.text doubleValue],3));
        
       // NSLog(@"%f", (4/3));
        
       // volumen = [NSString stringWithFormat:@"%d", ]
        //(4/3 * pi * radio ^3);
        
        viewIni.tInfo.text = radio;
        viewIni.foto= self.imgEsfera.image;
        viewIni.tVolumen.text = [NSString stringWithFormat: @"%f", volumen];
        
       // viewIni.nombre = self.tNombre.text;
        //viewIni.email = self.tEmail.text;
    }
}



@end
