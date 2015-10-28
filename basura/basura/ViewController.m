//
//  ViewController.m
//  basura
//
//  Created by Enrique O Hernandez on 2/23/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


ALERTA

NSString *mensaje = [[NSString alloc] initWithFormat: @"hola %@", self.tfNombre.text];

UIAlertView *alerta = [[UIAlertView alloc] initWithTitle : @"saludo"
                                                  message: mensaje
                                                 delegate: self
                                        cancelButtonTitle: @"OK"
                                        otherButtonTitles: nil];
[alerta show];


INTERFACE

@interface UnaClase: NSObject
{
    @property CGFloat numero;
}
@end.

Clase1 *objeto= [[Clase1 alloc]init];


METODOS

- (id) initWithTitle: (NSString *) title
message: (NSSTring *) message
delegate: (id) delegate
cancelButtonTitle: (NSString *) cancelButtonTitle
otherButtonTitles: (NSString*) otherButtonTitles


INICIALIZACION

-(id) init{
    self = [super init];
    if(self){
        //inicializar variables de instancia aqui
    }
    
    return self;
}

- (id)
initWithNombre: (NSString *) nom
apellido: (NSString *) ape
fechaNacimiento: (NSDate *) fechaNac
{
    self = [super init];
    if (self) {
        _nombre = nom;
        _apellido = ape;
        _fechaNacimiento = fechaNac;
    }
    return self;
}


EQUAL TO STRING

[self.tipoCambio.text isEqualToString:@""]


STRING

[[NSString alloc] initWithFormat:@"%f", dolares];


IMAGEN

self.imagenDolar.image = [UIImage imageNamed:@"dollar.jpg"];


QUITATECLADO

ViewDidLoad

UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                               initWithTarger: self action: @selector (quitaTeclado)];
[self.view addGestureRecognizer: tap];

Metodo quita teclado

-(void) quitaTeclado
{
    [self.view endEditing:YES];
}

NSDATEFORMATER

NSDateFormatter *formato = [[NSDateFormatter alloc] init];
[formato setDateStyle: NSDateFormatterMediumStyle];

setDateStyle:NSDateFormatterShortStyle		8/21/12
setDateStyle:NSDateFormatterMediumStyle		Aug 21, 2012
setDateStyle:NSDateFormatterLongStyle		August 21, 2012
setDateStyle:NSDateFormatterFullStyle		Tuesday, August 21, 2012
setTimeStyle:NSDateFormatterShortStyle		10:39 PM
setTimeStyle:NSDateFormatterMediumStyle		10:39:02 PM
setTimeStyle:NSDateFormatterLongStyle		10:39:02 PM CDT
setTimeStyle:NSDateFormatterFullStyle		10:39:02 PM Central Daylight Time

DEFINIDOS POR PROGRAMADOR

NSDateFormatter *formato = [[NSDateFormatter alloc] init];
[formato setDateFormat: @"EEE, dd 'de' MMMM"];
// Mon, 26 de August


UNWIND

-(IBAction) unwindNombre: (UIStoryboardSegue *)segue
{
    //datos
}

-(IBAction) unwindInformacion: (UIStoryboardSegue *)segue
{
    //datos
}

CLASE CONTACTO

PROPIEDADES

#import <Foundation/Foundation.h>
@interface Contacto : NSObject
@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, strong) NSString *oficina;
@property NSInteger telefono;
- (id) initWithNombre: (NSString *) nom oficina: (NSString *) ofic telefono: (NSInteger) tel;
@end

CONSTRUCTOR

#import "Contacto.h”
@implementation Contacto
- (id) initWithNombre: (NSString *) nom oficina: (NSString *) ofic telefono: (NSInteger) tel
{
    self = [super init];
    if (self)
    {
        _nombre = nom;
        _oficina = ofic;
        _telefono = tel;
    }
    return self;
}
@end

AGREGAR A ARREGLO

Contacto *cont1 = [[Contacto alloc] initWithNombre:@"Juan" oficina:@"Aulas 2-222" telefono:6457];
Contacto *cont2 = [[Contacto alloc] initWithNombre:@"Rosy" oficina:@"Aulas 7-401" telefono:6482];
self.listaContactos = [[NSMutableArray alloc] initWithObjects: cont1, cont2, nil];

AGREGAR PROTOCOLO

@protocol ProtocoloAgregarContacto <NSObject>

-(void) agregaContacto: (NSString *) nombre withOficina: (NSString *) ofic withTelefono: (NSInteger) tel;
-(void) quitaVista;

@end

@interface ViewControllerAgregar : UIViewController

@property (nonatomic, strong) id <ProtocoloAgregarContacto>
delegado;

IMPORTA EN MASTERVIEWCONTROLLER.H

#import <UIKit/UIKit.h>
#import "ViewControllerAgregar.h"

@interface MasterViewController : UITableViewController
<ProtocoloAgregarContacto>
@end


￼MASTERVIEWCONTROLLER.M

-(void) agregaContacto: (NSString *) nombre withOficina: (NSString *)ofic withTelefono:(NSInteger) tel
{
    Contacto *temp = [[Contacto alloc] initWithNombre: nombre oficina:ofic telefono:tel];
    [self.listaContacto addObject: temp];
    [self.tableView reloadData];
}

-(void) quitaVista
{
    [self.navigationController popViewControllerAnimated: YES];
}





@end
