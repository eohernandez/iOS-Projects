//
//  ViewController.h
//  UsemosCamara
//
//  Created by alumno on 09/03/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imgFoto;
@property (strong, nonatomic) IBOutlet UIButton *tomaFoto;

- (IBAction)btnTomaFoto:(id)sender;
- (IBAction)btnEligeFoto:(id)sender;
@end

