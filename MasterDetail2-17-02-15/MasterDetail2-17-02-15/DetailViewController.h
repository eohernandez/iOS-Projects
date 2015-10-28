//
//  DetailViewController.h
//  MasterDetail2-17-02-15
//
//  Created by Enrique O Hernandez on 2/17/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Actividad.h"
#import "ViewControllerCalifica.h"
#import "MasterViewController.h"

@interface DetailViewController : UIViewController
//<ProtocoloAgregarCalificacion>

@property (strong, nonatomic) Actividad *detailItem;
@property (nonatomic, strong) MasterViewController  *master;


@property (weak, nonatomic) IBOutlet UILabel *tNombre;

@property (weak, nonatomic) IBOutlet UILabel *tCalificacion;
@property (weak, nonatomic) IBOutlet UITextView *tvComentarios;

@end

