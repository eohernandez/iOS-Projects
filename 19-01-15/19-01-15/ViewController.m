//
//  ViewController.m
//  19-01-15
//
//  Created by alumno on 19/01/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   // @property(nonatomic, copy) UICOLOR *backgroundColor
    self.view.backgroundColor = [UIColor redColor];
    self.labelNumerical.text = @"0.500000";
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)slideNumerical:(id)sender {
    
    UISlider *sliderNum = (UISlider *)sender;
    CGFloat numVal = sliderNum.value;
    
    self.labelNumerical.text = [[NSString alloc] initWithFormat: @"%f", numVal];
    
    
}
- (IBAction)SlideLetra:(id)sender {
    
    UISlider *sliderNum = (UISlider *)sender;
    CGFloat numVal = sliderNum.value;
    
    CGRect frame = self.LabelLetra.frame;
    
    
    frame.origin.x = numVal*self.viewAbajo.frame.size.width;
    
    self.LabelLetra.frame = frame;

    //self.viewAbajo.frame.size.width
   
}

- (IBAction)SwitchColor:(UISwitch *)sender {
    if(self.boton1.isOn){
       self.view.backgroundColor = [UIColor redColor];
    }
    else {
        self.view.backgroundColor = [UIColor greenColor];
    }
    
    
}
@end
