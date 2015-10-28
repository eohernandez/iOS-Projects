//
//  ViewControllerAgregar.m
//  ListaContactosMasterDetail-12-02-15
//
//  Created by Enrique O Hernandez on 2/12/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "ViewControllerAgregar.h"



@implementation ViewControllerAgregar

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([[segue identifier] isEqualToString:@"showDetail"])
    {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Contacto *object = self.listaContactos[indexPath.row];
        [[segue destinationViewController] setDetailItem: object];
        
    }
    else
        if ([[segue identifier] isEqualToString:@"agrega"])
            [[segue destinationViewController] setDelegado: self];
        
}
 */



- (IBAction)oprimoBotonAgregar:(id)sender {
    if(![self.tfNombre.text isEqualToString:@""]){
        
        NSString *nom = self.tfNombre.text;
        NSString *ofi = self.tfOficina.text;
        NSInteger tel = [self.tfTelefono.text integerValue];
        
        [self.delegado agregaContacto:nom withOficina:ofi withTelefono:tel];
        
        [self.delegado quitaVista];
        
    }
    
}
@end
