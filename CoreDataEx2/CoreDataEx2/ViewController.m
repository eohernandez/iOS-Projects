//
//  ViewController.m
//  CoreDataEx2
//
//  Created by Enrique O Hernandez on 4/12/15.
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

- (IBAction)oprimoGuardar:(id)sender {
    AppDelegate *appDelegate =[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *contexto = [appDelegate managedObjectContext];
    
    //crea un nuevo registro en la base
    NSManagedObject *nuevoEmp = [NSEntityDescription insertNewObjectForEntityForName:@"Empleado" inManagedObjectContext:contexto];
    
    //colocar los dato al registro
    NSInteger numeroId = [self.tfId.text integerValue];
    [nuevoEmp setValue:[NSNumber numberWithInteger: numeroId] forKey:@"ident"];
    [nuevoEmp setValue:self.tfNombre.text forKey:@"nombre"];
    CGFloat sueldo = [self.tfSueldo.text floatValue];
    [nuevoEmp setValue:[NSNumber numberWithFloat:sueldo] forKey:@"sueldo"];
    
    //campos en blanco
    self.tfId.text= @"";
    self.tfNombre.text = @"";
    self.tfSueldo.text = @"";
    [self.view endEditing:YES]; //quita teclado
    NSError *error;
    //guarda el conexto a la bae
    [contexto save: &error];
    self.lbEstatus.text = @"Empleado guardado";
}

- (IBAction)oprimoBuscar:(id)sender {
    AppDelegate *appDelegate =[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *contexto = [appDelegate managedObjectContext];
    NSEntityDescription *entidad = [NSEntityDescription entityForName:@"Empleado" inManagedObjectContext:contexto];
    //creo un request
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entidad]; //especifico a cantidad
    NSPredicate *predicado =[NSPredicate predicateWithFormat:@" (ident = %@)", self.tfId.text];
    [request setPredicate:predicado]; //especifico el creiterio de bsuqueda
    
    NSError *error;
    //ejecuto el request
    NSArray *objetosMatch = [contexto executeFetchRequest:request error:&error];
    
    [self.view endEditing:YES]; //quita teclado
    
    if(objetosMatch.count == 0){
        self.lbEstatus.text = @"No hay empleados con ese nombre";
    }
    else{
        NSManagedObject *registroMatch = objetosMatch[0];
        self.tfId.text = [[registroMatch valueForKey:@"ident"] stringValue];
        self.tfNombre.text = [registroMatch valueForKey:@"nombre"];
        self.tfSueldo.text = [[registroMatch valueForKey:@"sueldo"] stringValue];
        self.lbEstatus.text = @"";
    }
    
}
@end
