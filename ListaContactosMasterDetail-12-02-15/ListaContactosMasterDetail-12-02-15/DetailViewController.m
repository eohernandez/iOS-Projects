//
//  DetailViewController.m
//  ListaContactosMasterDetail-12-02-15
//
//  Created by Enrique O Hernandez on 2/12/15.
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
        self.lNombre.text = [self.detailItem nombre];
        self.lOficina.text = [self.detailItem oficina];
        self.lTelefono.text = [NSString stringWithFormat:@"%d", [self.detailItem telefono]] ;
    
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
