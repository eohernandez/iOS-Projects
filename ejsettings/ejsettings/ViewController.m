//
//  ViewController.m
//  ejSettings
//
//  Created by Enrique O Hernandez on 3/23/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appDidBecomeActive:) name:UIApplicationDidBecomeActiveNotification object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) actualizaSettings{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.lNombre.text = [defaults objectForKey: @"nombreUsuario"];
    self.lSonido.text = [[defaults valueForKey:@"sonido"] stringValue];
    self.lVolumen.text = [[defaults valueForKey:@"volumen"] stringValue];
    self.lExperiencia.text = [defaults objectForKey:@"experiencia"];
}

- (void) viewDidAppear:(BOOL)animated{
    [self actualizaSettings];
    [super viewDidAppear:YES];
}
- (void)appDidBecomeActive:(NSNotification *)notification {
    [self actualizaSettings];
}




@end

