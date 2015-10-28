//
//  ViewController.h
//  5-02-15-Cuerpor-geometricos
//
//  Created by alumno on 05/02/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *tInfo;
@property (strong, nonatomic) IBOutlet UILabel *tVolumen;
- (IBAction)bInicio:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *bEsfera;
@property (strong, nonatomic) IBOutlet UIButton *bPrisma;
@property (strong, nonatomic) IBOutlet UIImageView *imgFoto;
@property (strong, nonatomic) UIImage *foto;
@property (strong, nonatomic) IBOutlet UIImageView *imgFotoB;


@end

