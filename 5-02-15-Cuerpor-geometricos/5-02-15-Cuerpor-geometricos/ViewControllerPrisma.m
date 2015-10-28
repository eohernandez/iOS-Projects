//
//  ViewControllerPrisma.m
//  5-02-15-Cuerpor-geometricos
//
//  Created by alumno on 05/02/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewControllerPrisma.h"
#import "ViewController.h"

@interface ViewControllerPrisma ()

@end

@implementation ViewControllerPrisma

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
        
        double volumen = ([self.tLargo.text doubleValue] * [self.tAncho.text doubleValue] * [self.tAlto.text doubleValue]);
        
        NSString *info = [NSString stringWithFormat: @"Largo: %@ \nAncho: %@ \nAltura: %@", self.tLargo.text, self.tAncho.text, self.tAlto.text];
        
        
        viewIni.tInfo.text = info;
        viewIni.foto= self.imgPrisma.image;
        viewIni.tVolumen.text = [NSString stringWithFormat: @"%f", volumen];
        
    }
}


@end
