//
//  Vista2ViewController.m
//  CeldasEstaticas
//
//  Created by Enrique O Hernandez on 3/5/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "Vista2ViewController.h"

@interface Vista2ViewController ()

@end

@implementation Vista2ViewController


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
        self.detailDescriptionLabel.text = [self.detailItem description];
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
