//
//  Actividad.m
//  Calif-MasterDetail-16-02-15
//
//  Created by Enrique O Hernandez on 2/16/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "Actividad.h"

@implementation Actividad

-(id) initWithNombre: (NSString *)nom calificacion:(NSInteger *)cal comentarios: (NSString *)coment{
    
    self = [super init];
    
    if(self)
    {
        _nombreAlumno =  nom;
        
        _calificacion = cal;
        
        _comentarios = coment;
        
    }
    
    return self;
}

@end
