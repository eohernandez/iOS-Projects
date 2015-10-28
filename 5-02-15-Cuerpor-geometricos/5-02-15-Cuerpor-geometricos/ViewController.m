//
//  ViewController.m
//  5-02-15-Cuerpor-geometricos
//
//  Created by alumno on 05/02/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   // self.imgFotoB = self.imgFoto;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)unwindEsfera:(UIStoryboardSegue *)segue{
    
     self.imgFoto.image = self.foto;
}
- (IBAction)unwindPrisma:(UIStoryboardSegue *)segue{
     self.imgFoto.image = self.foto;
    
}

- (IBAction)bInicio:(id)sender {
    
    self.tInfo.text = @"Info";
    self.tVolumen.text = @"";
   
    [UIView transitionWithView:self.imgFoto
                      duration:1.0f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        self.imgFoto.image = [UIImage imageNamed:@"CuerposGeometricos.gif"];
                    } completion:nil];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    /*
    if([[segue identifier] isEqualToString:@"info"]){
        
        ViewController *viewInfo = [segue destinationViewController];
        
        viewInfo.foto = self.imgFoto.image;
        viewInfo.ancho = self.imgFoto.image.size.width;
        viewInfo.altura =  self.imgFoto.image.size.height;
    }
    else{
        ViewControllerEditar *viewEditar = [segue destinationViewController];
        viewEditar.nombre = self.tNombre.text;
        viewEditar.email = self.tEmail.text;
    }
     */
    
    
    
}

@end
