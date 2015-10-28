//
//  ViewControllerCalifica.h
//  MasterDetail2-17-02-15
//
//  Created by Enrique O Hernandez on 2/17/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Actividad.h"

@protocol ProtocoloAgregarCalificacion <NSObject>

-(void) cambiaCalificacion: (NSString *) nombre withCalificacion: (NSInteger) calif withCometario: (NSString *) comentario;

-(void) quitaVista;

@end

@interface ViewControllerCalifica : UIViewController

@property (nonatomic, strong) id <ProtocoloAgregarCalificacion> delegado;


@property (strong, nonatomic) Actividad *detailItem;

@property (weak, nonatomic) IBOutlet UILabel *lNombre;
@property (weak, nonatomic) IBOutlet UITextField *tCalificacion;
@property (weak, nonatomic) IBOutlet UITextView *tvComentarios;
- (IBAction)guardarCambios:(id)sender;

@end
