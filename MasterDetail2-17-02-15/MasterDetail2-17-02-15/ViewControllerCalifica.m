//
//  ViewControllerCalifica.m
//  MasterDetail2-17-02-15
//
//  Created by Enrique O Hernandez on 2/17/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "ViewControllerCalifica.h"
#import "MasterViewController.h"
#import "DetailViewController.h"
#import "Actividad.h"


@interface ViewControllerCalifica ()

@end

@implementation ViewControllerCalifica

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.lNombre.text = [self.detailItem nombreAlumno];
        self.tCalificacion.text = [NSString stringWithFormat:@"%d", [self.detailItem calificacion]];
        self.tvComentarios.text = [self.detailItem comentarios];
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)guardarCambios:(id)sender {
    NSString *nomb = self.lNombre.text;
    NSInteger calif = [self.tCalificacion.text integerValue];
    NSString *coment = self.tvComentarios.text;
    
    [self.delegado cambiaCalificacion:nomb withCalificacion:calif withCometario:coment];
    [self.delegado quitaVista];
    
     
}
@end
