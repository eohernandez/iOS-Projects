//
//  DetailViewController.m
//  MasterDetail2-17-02-15
//
//  Created by Enrique O Hernandez on 2/17/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "DetailViewController.h"
#import "MasterViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

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
        self.tNombre.text = [self.detailItem nombreAlumno];
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"califica"]) {
        
        Actividad *object = self.detailItem;
        [[segue destinationViewController] setDetailItem:object];
        
        [[segue destinationViewController] setDelegado: self.master];
        
        }
    
        
    }


@end
