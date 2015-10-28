//
//  ViewControllerCalifica.h
//  Calif-MasterDetail-16-02-15
//
//  Created by Enrique O Hernandez on 2/16/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Actividad.h"
@protocol ProtocoloAgregarActividad <NSObject>

- (void) agregaActividad:(NSString *) nombre withCalificacion: (NSInteger) calif withComentario: (NSString *) coment;

-(void) quitaVista;
@end


@interface ViewControllerCalifica : UIViewController

@property (strong, nonatomic) Actividad *detailItem;
@property (weak, nonatomic) IBOutlet UITextField *tfNombre;
@property (weak, nonatomic) IBOutlet UITextField *tfCalificacion;
@property (weak, nonatomic) IBOutlet UITextView *tvComentario;

- (IBAction)bDone:(id)sender;

@property (nonatomic, strong) id <ProtocoloAgregarActividad> delegado;

@end
