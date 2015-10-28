//
//  ViewController.h
//  gestureRecognizer
//
//  Created by Enrique O Hernandez on 4/27/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *vista;

@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *singleTap;

@end

