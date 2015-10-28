//
//  MasterViewController.m
//  CeldasALaMedida
//
//  Created by Enrique O Hernandez on 3/5/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "MasterViewController.h"
//#import "DetailViewController.h"
#import "CustomTableViewCell.h"

@interface MasterViewController ()

@property NSArray *ipods;
@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *pathPlist = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    
    self.ipods = [[NSArray alloc] initWithContentsOfFile: pathPlist];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Segues
/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDictionary *object = self.ipods[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
}
*/
#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.ipods.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDictionary *object = self.ipods[indexPath.row];
    
    
    
    cell.tTipo.text = [object objectForKey:@"tipo"];
    
    NSString *stringUrl = [object objectForKey:@"urlFoto"];
    
    NSURL *nsurl = [NSURL URLWithString: stringUrl ];
    NSData *data = [[NSData alloc] initWithContentsOfURL: nsurl];
    UIImage *imagen2 = [UIImage imageWithData: data];
    cell.Imagen.image = imagen2;
    
    cell.tCapacidad.text  = [object objectForKey:@"capacidad"];
    cell.tPrecio.text = [NSString stringWithFormat: @"$ %@",[[object objectForKey:@"precio"] stringValue] ];

    return cell;
}


@end
