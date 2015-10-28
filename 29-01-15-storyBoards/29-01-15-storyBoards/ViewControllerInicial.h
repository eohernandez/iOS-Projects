//
//  ViewControllerInicial.h
//  29-01-15-storyBoards
//
//  Created by alumno on 29/01/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerInicial : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imgFoto;
@property (strong, nonatomic) IBOutlet UITextField *tNombre;
@property (strong, nonatomic) IBOutlet UITextField *tEmail;

@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, strong) NSString *email;

@end
