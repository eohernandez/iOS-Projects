//
//  ViewController.m
//  PersistenciaPList
//
//  Created by Enrique O Hernandez on 3/19/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Cargar cuando Vuelve
    
    NSString *filePath = [self dataFilePath];
    
    if([[NSFileManager defaultManager] fileExistsAtPath:filePath]){
        
        NSArray *array = [[NSArray alloc] initWithContentsOfFile: filePath];
        self.tfDatos1.text = [array objectAtIndex: 0];
        self.tfDatos2.text = [array objectAtIndex: 1];
        self.tfDatos3.text = [array objectAtIndex: 2];
        self.tfDatos4.text = [array objectAtIndex: 3];
        
    }
    
    UIApplication *app = [UIApplication sharedApplication];
    [[NSNotificationCenter defaultCenter]
     addObserver:self selector:@selector(aplicacionTerminara:) name:UIApplicationDidEnterBackgroundNotification object:app];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSString *)dataFilePath{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory=[paths objectAtIndex: 0];
    return[documentsDirectory stringByAppendingPathComponent:@"archivoDatos.plist"];
}
-(void) aplicacionTerminara: (NSNotification *) notification{
    NSMutableArray *listaDatos =[[NSMutableArray alloc]init];
    [listaDatos addObject:self.tfDatos1.text];
    [listaDatos addObject:self.tfDatos2.text];
    [listaDatos addObject:self.tfDatos3.text];
    [listaDatos addObject:self.tfDatos4.text];
    [listaDatos writeToFile:[self dataFilePath] atomically:YES];
}

@end
