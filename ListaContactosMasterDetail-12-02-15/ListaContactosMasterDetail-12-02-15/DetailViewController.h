//
//  DetailViewController.h
//  ListaContactosMasterDetail-12-02-15
//
//  Created by Enrique O Hernandez on 2/12/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contacto.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Contacto *detailItem;

@property (weak, nonatomic) IBOutlet UILabel *lNombre;

@property (weak, nonatomic) IBOutlet UILabel *lOficina;

@property (weak, nonatomic) IBOutlet UILabel *lTelefono;

@end

