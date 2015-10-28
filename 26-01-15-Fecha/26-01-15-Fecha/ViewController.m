//
//  ViewController.m
//  26-01-15-Fecha
//
//  Created by Enrique O. Hernandez A01185423 on 1/26/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//



#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSDate *fechaHoy;
    fechaHoy = [NSDate date];
    NSDateFormatter *formateador = [[NSDateFormatter alloc] init];
    
    [formateador setDateStyle:NSDateFormatterShortStyle];
    
    
    NSString *fechaFormateada = [formateador stringFromDate:fechaHoy];
    
    NSLog(@"%@", fechaHoy);
    NSLog(@"La fecha es: %@", fechaFormateada);
    
    NSDateFormatter *formateador2 =[[NSDateFormatter alloc] init];
    [formateador2 setDateFormat:@"EEE, MMM d, yyyy"];
    NSString *fechaFormateada2 = [formateador2 stringFromDate:fechaHoy];
     NSLog(@"La fecha formateada es: %@", fechaFormateada2);
    
    NSLog(@"Comienza la actividad");
    
    NSDateFormatter *formateador3 =[[NSDateFormatter alloc] init];
    [formateador3 setDateFormat:@"EEE,d MMM"];
    NSString *fechaFormateada3 = [formateador3 stringFromDate:fechaHoy];
    NSLog(@"%@", fechaFormateada3);
    
    
    NSDateFormatter *formateador4 =[[NSDateFormatter alloc] init];
    [formateador4 setDateFormat:@"EEE,d MMMM"];
    NSString *fechaFormateada4 = [formateador4 stringFromDate:fechaHoy];
    NSLog(@"%@", fechaFormateada4);
    
    NSDateFormatter *formateador5 =[[NSDateFormatter alloc] init];
    [formateador5 setDateFormat:@"d/MM/yyyy --- H:mm:ss"];
    NSString *fechaFormateada5 = [formateador5 stringFromDate:fechaHoy];
    NSLog(@"%@", fechaFormateada5);
    
    NSDateFormatter *formateador6 =[[NSDateFormatter alloc] init];
    [formateador6 setDateFormat:@"d/MMM/yyyy --- h:mm:ss a"];
    NSString *fechaFormateada6 = [formateador6 stringFromDate:fechaHoy];
    NSLog(@"%@", fechaFormateada6);
    
    NSDateFormatter *formateador7 =[[NSDateFormatter alloc] init];
    [formateador7 setDateFormat:@"'despues de las' h a"];
    NSString *fechaFormateada7 = [formateador7 stringFromDate:fechaHoy];
    NSLog(@"%@", fechaFormateada7);
    
    NSDateFormatter *formateador8 =[[NSDateFormatter alloc] init];
    [formateador8 setDateFormat:@"'Dias transcurridos en el anio' D"];
    NSString *fechaFormateada8 = [formateador8 stringFromDate:fechaHoy];
    NSLog(@"%@", fechaFormateada8);
    
    NSDate *sigsemana = [fechaHoy dateByAddingTimeInterval:604800];
    
    NSDateFormatter *formateador9 =[[NSDateFormatter alloc] init];
    [formateador9 setDateFormat:@"'Semana siguiente:' EEE d MMM"];
    NSString *fechaFormateada9 = [formateador9 stringFromDate:sigsemana];
    NSLog(@"%@", fechaFormateada9);
    
    NSDate *antsemana = [fechaHoy dateByAddingTimeInterval:-604800];
    
    NSDateFormatter *formateador10 =[[NSDateFormatter alloc] init];
    [formateador10 setDateFormat:@"'Semana anterior:' EEE d MMM"];
    NSString *fechaFormateada10 = [formateador10 stringFromDate:antsemana];
    NSLog(@"%@", fechaFormateada10);
    
    NSDate *sigDia = [fechaHoy dateByAddingTimeInterval:86400];
    
    NSDateFormatter *formateador11 =[[NSDateFormatter alloc] init];
    [formateador11 setDateFormat:@"'Dia siguiente:' EEE d MMM"];
    NSString *fechaFormateada11 = [formateador11 stringFromDate:sigDia];
    NSLog(@"%@", fechaFormateada11);

    NSDate *antDia = [fechaHoy dateByAddingTimeInterval:-86400];
    
    NSDateFormatter *formateador12 =[[NSDateFormatter alloc] init];
    [formateador12 setDateFormat:@"'Dia anterior:' EEE d MMM"];
    NSString *fechaFormateada12 = [formateador12 stringFromDate:antDia];
    NSLog(@"%@", fechaFormateada12);
    
    
    
    //http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns
    
    
   
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
