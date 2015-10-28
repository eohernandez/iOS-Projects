//
//  FirstViewController.m
//  Picker
//
//  Created by Enrique O Hernandez on 4/9/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property NSArray *arr1;
@property NSArray *arr2;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //[pickerView selectedRowInComponent: 1];

    
    self.arr1 = [NSArray arrayWithObjects:@"A",@"B",@"C",@"D",@"E", nil];
    self.arr2 = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5", @"6",@"7",nil];
    
    
    self.lSeleccion.text  = [NSString stringWithFormat:@"A 1"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString * )pickerView: (UIPickerView *) pickerView titleForRow: (NSInteger)row forComponent:(NSInteger) component{
    if(component ==0)
        return self.arr1[row];
    else{
        return self.arr2[row];
    }
    
}
-  (NSInteger) numberOfComponentsInPickerView: (UIPickerView *) pickerView{
    return 2;
}
-  (NSInteger) pickerView:(UIPickerView *) pickerView numberOfRowsInComponent: (NSInteger) component{
    
    if(component ==0)
        return self.arr1.count;
    else{
        return self.arr2.count;
    }
    
}
-  (void) pickerView: (UIPickerView *) pickerView didSelectRow: (NSInteger) row inComponent:(NSInteger) component{
    
    
    self.lSeleccion.text  = [NSString stringWithFormat:@"%@ %@", self.arr1[[pickerView selectedRowInComponent: 0]],self.arr2[[pickerView selectedRowInComponent: 1]]];
    
}



@end
