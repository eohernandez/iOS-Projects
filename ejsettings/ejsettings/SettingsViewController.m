//
//  SettingsViewController.m
//  ejSettings
//
//  Created by Enrique O Hernandez on 3/23/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if([defaults boolForKey:@"sonido"])
        self.sSonido.on = YES;
    else
        self.sSonido.on = NO;
    self.slVolumen.value = [defaults floatForKey:@"volumen"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillDisappear:(BOOL)animated{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setBool:self.sSonido.on forKey:@"sonido"];
    [defaults setFloat:self.slVolumen.value forKey:@"volumen"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
