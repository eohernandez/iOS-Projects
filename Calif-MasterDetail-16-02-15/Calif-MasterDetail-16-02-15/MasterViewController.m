//
//  MasterViewController.m
//  Calif-MasterDetail-16-02-15
//
//  Created by Enrique O Hernandez on 2/16/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "Actividad.h"

@interface MasterViewController ()

@property NSMutableArray *actividades;
@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view,
    
    Actividad *act1 =[[Actividad alloc] initWithNombre:@"Juan" calificacion: 0 comentarios:@""];
    Actividad *act2 =[[Actividad alloc] initWithNombre:@"Jose" calificacion: 0 comentarios:@""];
    Actividad *act3 =[[Actividad alloc] initWithNombre:@"Pedro" calificacion: 0 comentarios:@""];
    
    self.actividades = [[NSMutableArray alloc] initWithObjects: act1, act2, act3, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
- (void)insertNewObject:(id)sender {
    if (!self.objects) {
        self.objects = [[NSMutableArray alloc] init];
    }
    [self.objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}
 */
-(void)quitaVista{
    
    [self.navigationController popViewControllerAnimated:YES];
}

-(void) agregaActividad:(NSString *)nombre withCalificacion: (NSInteger *)calif withComentario:(NSString *)coment{
    
    
    Actividad *tmp = [[Actividad alloc] initWithNombre:nombre calificacion:calif comentarios:coment];
    [self.actividades addObject:tmp];
    [self.tableView reloadData];
}
                      
                      
                      
#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Actividad *object = self.actividades[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
    else{
        if ([[segue identifier] isEqualToString:@"califica"])
            [[segue destinationViewController] setDelegado: self];
        
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
    cell.textLabel.text = [object description];
    return cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.actividades removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

@end
