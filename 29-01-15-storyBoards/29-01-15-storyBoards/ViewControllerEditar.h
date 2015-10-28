//
//  ViewControllerEditar.h
//  29-01-15-storyBoards
//
//  Created by alumno on 29/01/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerEditar : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *tNombre;
@property (strong, nonatomic) IBOutlet UITextField *tEmail;
@property (strong, nonatomic) IBOutlet UIButton *bCancelar;
@property (strong, nonatomic) IBOutlet UIButton *bGuardar;

@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, strong) NSString *email;
@end
