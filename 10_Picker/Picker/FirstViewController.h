//
//  FirstViewController.h
//  Picker
//
//  Created by Enrique O Hernandez on 4/9/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *lSeleccion;

@end

