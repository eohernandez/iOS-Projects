//
//  MasterViewController.m
//  MasterDetail2-17-02-15
//
//  Created by Enrique O Hernandez on 2/17/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "Actividad.h"

@interface MasterViewController ()

@property NSMutableArray *actividades;
@property NSInteger renglon;
@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Actividad *act1 =[[Actividad alloc] initWithNombre:@"Juan" calificacion: 0 comentarios:@""];
    Actividad *act2 =[[Actividad alloc] initWithNombre:@"Jose" calificacion: 0 comentarios:@""];
    Actividad *act3 =[[Actividad alloc] initWithNombre:@"Pedro" calificacion: 0 comentarios:@""];
    
    self.actividades = [[NSMutableArray alloc] initWithObjects: act1, act2, act3, nil];
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segues

 -(void)cambiaCalificacion:(NSString *)nombre withCalificacion:(NSInteger)calif withCometario:(NSString *)comentario
{
    
    Actividad *temp  = self.actividades[self.renglon];
    temp.calificacion = calif;
    temp.comentarios = comentario;
    
    [self.tableView reloadData];
}

-(void) quitaVista{
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Actividad *object = self.actividades[indexPath.row];
        self.renglon = indexPath.row;
        [[segue destinationViewController] setDetailItem:object];
        
        [[segue destinationViewController] setMaster: self];
        
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.actividades.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    Actividad *object = self.actividades[indexPath.row];
    cell.textLabel.text = [object nombreAlumno];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", [object calificacion]];
    return cell;
    
}
/*
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
 */
/*
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
 
}
 */

@end
