//
//  SecondViewController.m
//  Picker
//
//  Created by Enrique O Hernandez on 4/9/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSDate *fechaHoy;
    fechaHoy = [NSDate date];
    
    NSDateFormatter *formateador1 =[[NSDateFormatter alloc] init];
    [formateador1 setDateFormat:@" MMM d, yyyy"];
    NSString *fechaFormateada1 = [formateador1 stringFromDate: fechaHoy];
    self.lFecha.text = fechaFormateada1;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)datepicker:(id)sender {
    
    NSDateFormatter *formateador2 =[[NSDateFormatter alloc] init];
    [formateador2 setDateFormat:@" MMM d, yyyy"];
    NSString *fechaFormateada2 = [formateador2 stringFromDate: [sender date]];
    self.lFecha.text = fechaFormateada2;
}
@end
