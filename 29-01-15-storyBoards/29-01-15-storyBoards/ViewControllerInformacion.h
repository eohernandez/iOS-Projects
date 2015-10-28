//
//  ViewControllerInformacion.h
//  29-01-15-storyBoards
//
//  Created by alumno on 29/01/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerInformacion : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imgFoto;
@property (strong, nonatomic) IBOutlet UITextField *tAncho;
@property (strong, nonatomic) IBOutlet UITextField *tAltura;

@property (strong, nonatomic) UIImage *foto;

@property CGFloat ancho;
@property CGFloat altura;

@end
