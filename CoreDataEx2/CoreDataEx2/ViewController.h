//
//  ViewController.h
//  CoreDataEx2
//
//  Created by Enrique O Hernandez on 4/12/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tfId;
@property (weak, nonatomic) IBOutlet UITextField *tfNombre;

@property (weak, nonatomic) IBOutlet UITextField *tfSueldo;
@property (weak, nonatomic) IBOutlet UILabel *lbEstatus;
- (IBAction)oprimoGuardar:(id)sender;
- (IBAction)oprimoBuscar:(id)sender;

@end

