//
//  ViewControllerDetalle.m
//  collectionView
//
//  Created by alumno on 23/04/15.
//  Copyright (c) 2015 ITESM. All rights reserved.
//

#import "ViewControllerDetalle.h"

@interface ViewControllerDetalle ()

@end

@implementation ViewControllerDetalle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *vista = [[UIImageView alloc] initWithImage:self.foto];
    [self.scrollView addSubview:vista];
    [self.scrollView setContentSize:vista.frame.size];
    [self.scrollView setContentOffset:CGPointMake(vista.frame.size.width/2, vista.frame.size.height/2)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
