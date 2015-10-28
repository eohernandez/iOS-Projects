//
//  ViewController.m
//  Quartz-12-03-15
//
//  Created by Enrique O Hernandez on 3/12/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.vistaVista.bTriangulo = YES;
    self.vistaVista.bCirculo = YES;
    self.vistaVista.bCuadrado = YES;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchActivar:(UISwitch *)sender {
    
    //circulo
    if (self.switchCirculo.isOn) {
       self.vistaVista.bCirculo = YES;
    }
    if (!self.switchCirculo.isOn) {
        self.vistaVista.bCirculo = NO;
    }
    
    //triangulo
    if (self.switchTriangulo.isOn) {
        self.vistaVista.bTriangulo = YES;
    }
    if (!self.switchTriangulo.isOn) {
        self.vistaVista.bTriangulo = NO;
    }
    
    //rectangulo
    if (self.switchRectangulo.isOn) {
        self.vistaVista.bCuadrado = YES;
    }
    if (!self.switchRectangulo.isOn) {
        self.vistaVista.bCuadrado = NO;
    }
    
    [self.vistaVista setNeedsDisplay];
    
}
@end
