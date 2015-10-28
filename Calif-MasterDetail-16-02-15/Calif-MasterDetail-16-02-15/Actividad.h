//
//  Actividad.h
//  Calif-MasterDetail-16-02-15
//
//  Created by Enrique O Hernandez on 2/16/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Actividad : NSObject

@property(nonatomic, strong) NSString *nombreAlumno;
@property NSInteger *calificacion;
@property(nonatomic, strong) NSString *comentarios;


-(id) initWithNombre: (NSString *)nom calificacion:(NSInteger *)cal comentarios: (NSString *)coment ;

@end
