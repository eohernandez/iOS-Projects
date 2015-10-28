//
//  DetailViewController.m
//  cargarDatosPlist-02-03-15
//
//  Created by Enrique O Hernandez on 3/2/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "DetailViewController.h"

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
        
        NSString *stringUrl = [self.detailItem objectForKey:@"urlFoto"];
        NSURL *nsurl = [NSURL URLWithString: stringUrl ];
        NSData *data = [[NSData alloc] initWithContentsOfURL: nsurl];
        UIImage *imagen2 = [UIImage imageWithData: data];
        self.Imagen.image = imagen2;
        
        self.lNombre.text = [self.detailItem objectForKey:@"tipo"];
        self.lCapacidad.text = [self.detailItem objectForKey:@"capacidad"];
        self.lPrecio.text = [NSString stringWithFormat: @"$ %@",[[self.detailItem objectForKey:@"precio"] stringValue] ];
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

@end
