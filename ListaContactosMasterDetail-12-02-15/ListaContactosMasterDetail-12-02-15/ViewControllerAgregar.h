//
//  ViewControllerAgregar.h
//  ListaContactosMasterDetail-12-02-15
//
//  Created by Enrique O Hernandez on 2/12/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ProtocoloAgregarContacto <NSObject>

-(void) agregaContacto: (NSString *) nombre withOficina: (NSString *) ofic withTelefono: (NSInteger *) tel;
-(void) quitaVista;
@end

@interface ViewControllerAgregar : UIViewController

@property (nonatomic, strong) id <ProtocoloAgregarContacto> delegado;

@property (weak, nonatomic) IBOutlet UITextField *tfNombre;
@property (weak, nonatomic) IBOutlet UITextField *tfOficina;
@property (weak, nonatomic) IBOutlet UITextField *tfTelefono;
@property (weak, nonatomic) IBOutlet UIButton *bGuardar;
- (IBAction)oprimoBotonAgregar:(id)sender;

@end
