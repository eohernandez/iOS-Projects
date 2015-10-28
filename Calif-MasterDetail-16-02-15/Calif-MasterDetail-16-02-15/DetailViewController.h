//
//  DetailViewController.h
//  Calif-MasterDetail-16-02-15
//
//  Created by Enrique O Hernandez on 2/16/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Actividad.h"
#import "ViewControllerCalifica.h"
@interface DetailViewController : UITableViewController
<ProtocoloAgregarActividad>

@property (strong, nonatomic) Actividad *detailItem;

@property (weak, nonatomic) IBOutlet UILabel *LNombre;

@property (weak, nonatomic) IBOutlet UILabel *lCalificacion;

@property (weak, nonatomic) IBOutlet UITextView *lComentario;

@end

