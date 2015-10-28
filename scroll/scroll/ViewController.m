//
//  ViewController.m
//  scroll
//
//  Created by Enrique O Hernandez on 4/20/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imagen = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"paisajes-de-i.jpg"]];
    [self.scrolView addSubview:imagen];
    [self.scrolView setContentSize:imagen.frame.size];
    [self.scrolView setContentOffset:CGPointMake(imagen.frame.size.width/2, imagen.frame.size.height/8) animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
