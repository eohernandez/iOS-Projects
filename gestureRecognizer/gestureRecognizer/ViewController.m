//
//  ViewController.m
//  gestureRecognizer
//
//  Created by Enrique O Hernandez on 4/27/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *nombreImagen;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.nombreImagen = @"Mickey2.png";
    // defino un double tap gesture recognizer por programa
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(handleDoubleTap:)];
    doubleTap.numberOfTapsRequired = 2;
    // se requiere hacer un outlet para singleTap para poder cambiarle este parámetro
    [self.singleTap requireGestureRecognizerToFail: doubleTap]; [self.vista addGestureRecognizer: doubleTap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) handleDoubleTap: (UITapGestureRecognizer *) sender
{
    if ([self.nombreImagen isEqual: @"Mickey2.png"])
        self.nombreImagen = @"Donald_Duck.png"; else
            self.nombreImagen = @"Mickey2.png";
    
    [UIView animateWithDuration:5 animations:^{
        self.vista.image = [UIImage imageNamed:self.nombreImagen];
    }];
}
- (IBAction) handlePinchGesture: (UIPinchGestureRecognizer *) sender {
    CGFloat factor = [sender scale];
    sender.view.transform = CGAffineTransformScale(sender.view.transform, factor, factor);
    sender.scale = 1;
}
- (IBAction) handlePanGesture: (UIPanGestureRecognizer *) sender { CGPoint translate = [sender translationInView:self.view];
    CGRect newFrame = sender.view.frame; newFrame.origin.x += translate.x; newFrame.origin.y += translate.y; sender.view.frame = newFrame;
    if (sender.state == UIGestureRecognizerStateEnded) sender.view.frame = newFrame;
    [sender setTranslation: CGPointMake(0, 0) inView:self.view];
}
- (IBAction) handleSingleTap: (UIGestureRecognizer *) sender { CGPoint tapPoint = [sender locationInView: sender.view];
    [UIView animateWithDuration:1 animations:^{
        self.vista.center = tapPoint;
    }];
}

@end
