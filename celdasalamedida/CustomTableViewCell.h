//
//  CustomTableViewCell.h
//  CeldasALaMedida
//
//  Created by Enrique O Hernandez on 3/5/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *Imagen;

@property (weak, nonatomic) IBOutlet UITextField *tTipo;

@property (weak, nonatomic) IBOutlet UITextField *tCapacidad;
@property (weak, nonatomic) IBOutlet UITextField *tPrecio;



@end
