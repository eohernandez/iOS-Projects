//
//  Contacto.h
//  ListaContactosMasterDetail-12-02-15
//
//  Created by Enrique O Hernandez on 2/12/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contacto : NSObject

@property(nonatomic, strong) NSString *nombre;
@property(nonatomic, strong) NSString *oficina;
@property NSInteger *telefono;

-(id) initWithNombre: (NSString *)nom oficina: (NSString *)ofic telefono:(NSInteger *)tel;

@end
