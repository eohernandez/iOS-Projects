//
//  DetailViewController.h
//  CeldasEstaticas
//
//  Created by Enrique O Hernandez on 3/5/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

