//
//  ViewControllerInicial.m
//  29-01-15-storyBoards
//
//  Created by alumno on 29/01/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewControllerInicial.h"
#import "ViewControllerEditar.h"
#import "ViewControllerInformacion.h"
//http://apporta2014.com
@interface ViewControllerInicial ()

@end

@implementation ViewControllerInicial

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindInformation:(UIStoryboardSegue *)segue{
    
    //no se requiere hacer nada
}

-(IBAction)unwindEditar:(UIStoryboardSegue *)segue{
    
    //falta compleat
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([[segue identifier] isEqualToString:@"info"]){
        ViewControllerInformacion *viewInfo = [segue destinationViewController];
        viewInfo.foto = self.imgFoto.image;
        viewInfo.ancho = self.imgFoto.image.size.width;
        viewInfo.altura =  self.imgFoto.image.size.height;
    }
    else{
        ViewControllerEditar *viewEditar = [segue destinationViewController];
        viewEditar.nombre = self.tNombre.text;
        viewEditar.email = self.tEmail.text;
    }
    
    
    
}


@end
