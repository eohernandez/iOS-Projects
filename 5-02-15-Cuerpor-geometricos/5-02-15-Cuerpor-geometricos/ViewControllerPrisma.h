//
//  ViewControllerPrisma.h
//  5-02-15-Cuerpor-geometricos
//
//  Created by alumno on 05/02/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerPrisma : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imgPrisma;
@property (strong, nonatomic) IBOutlet UITextField *tLargo;
@property (strong, nonatomic) IBOutlet UITextField *tAncho;
@property (strong, nonatomic) IBOutlet UITextField *tAlto;
@property (strong, nonatomic) IBOutlet UIButton *bCancelar;
@property (strong, nonatomic) IBOutlet UIButton *bGuardar;

@end
