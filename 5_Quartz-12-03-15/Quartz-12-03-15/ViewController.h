//
//  ViewController.h
//  Quartz-12-03-15
//
//  Created by Enrique O Hernandez on 3/12/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClaseVista.h"

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UISwitch *switchTriangulo;
@property (weak, nonatomic) IBOutlet UISwitch *switchRectangulo;
@property (weak, nonatomic) IBOutlet UISwitch *switchCirculo;
- (IBAction)switchActivar:(UISwitch *)sender;

@property (weak, nonatomic) IBOutlet ClaseVista *vistaVista;


@end

