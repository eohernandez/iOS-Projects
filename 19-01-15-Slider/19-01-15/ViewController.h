//
//  ViewController.h
//  19-01-15
//
//  Created by alumno on 19/01/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


- (IBAction)slideNumerical:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *labelNumerical;

@property (strong, nonatomic) IBOutlet UILabel *LabelLetra;

- (IBAction)SlideLetra:(id)sender;


- (IBAction)SwitchColor:(UISwitch *)sender;

@property (strong, nonatomic) IBOutlet UIView *viewAbajo;
@property (strong, nonatomic) IBOutlet UISwitch *boton1;

@end

