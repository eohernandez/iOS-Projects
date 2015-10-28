//
//  ViewControllerCalifica.m
//  Calif-MasterDetail-16-02-15
//
//  Created by Enrique O Hernandez on 2/16/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "ViewControllerCalifica.h"

@interface ViewControllerCalifica ()

@end

@implementation ViewControllerCalifica

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.tfNombre.text = [self.detailItem nombreAlumno];
        self.tfCalificacion.text = [NSString stringWithFormat:@"%d", [self.detailItem calificacion]] ;
        self.tvComentario.text = [self.detailItem comentarios];
        
        
    }
}

- (IBAction)bDone:(id)sender {
    
    if(![self.tfNombre.text isEqualToString:@""]){
        
        NSString *nom = self.tfNombre.text;
        NSInteger calif = [self.tfCalificacion.text integerValue];
        NSString *coment = self.tvComentario.text;
        
        [self.delegado agregaActividad:nom withCalificacion: calif withComentario:coment];
        
        [self.delegado quitaVista];
        
    }
    
}
@end
