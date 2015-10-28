//
//  ViewControllerEditar.m
//  29-01-15-storyBoards
//
//  Created by alumno on 29/01/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewControllerEditar.h"
#import "ViewControllerInicial.h"

@interface ViewControllerEditar ()

@end

@implementation ViewControllerEditar

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tNombre.text = self.nombre;
    self.tEmail.text = self.email;
    
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
    
    ViewControllerInicial *viewIni = [segue destinationViewController];
    
    if (sender == self.bGuardar) {
        viewIni.nombre = self.tNombre.text;
        viewIni.email = self.tEmail.text;
    }
}


@end
