//
//  DetailViewController.h
//  cargarDatosPlist-02-03-15
//
//  Created by Enrique O Hernandez on 3/2/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *Imagen;
@property (weak, nonatomic) IBOutlet UILabel *lNombre;
@property (weak, nonatomic) IBOutlet UILabel *lCapacidad;
@property (weak, nonatomic) IBOutlet UILabel *lPrecio;

@end

