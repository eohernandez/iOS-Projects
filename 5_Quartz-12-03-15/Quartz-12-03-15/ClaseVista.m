//
//  ClaseVista.m
//  Quartz-12-03-15
//
//  Created by Enrique O Hernandez on 3/12/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "ClaseVista.h"

@implementation ClaseVista


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    CGContextRef contexto = UIGraphicsGetCurrentContext();
    
    //Capa 1
    CGLayerRef capa1 = CGLayerCreateWithContext (contexto, self.frame.size, NULL);
    //capa 2
    CGLayerRef capa2 = CGLayerCreateWithContext (contexto, self.frame.size, NULL);
    //capa 3
    CGLayerRef capa3 = CGLayerCreateWithContext (contexto, self.frame.size, NULL);

    
    //Contextos
    CGContextRef contextoCapa1 = CGLayerGetContext(capa1);
    CGContextRef contextoCapa2 = CGLayerGetContext(capa2);
    CGContextRef contextoCapa3 = CGLayerGetContext(capa3);
    
    //cuadrado
    CGContextSetLineWidth(contextoCapa1, 2.0);
    CGColorRef colorTrans = CGColorCreateCopyWithAlpha([UIColor purpleColor].CGColor, 0.5);
    CGContextSetFillColorWithColor(contextoCapa1,colorTrans);
    CGContextSetStrokeColorWithColor(contextoCapa1, [UIColor yellowColor].CGColor);
    CGRect unRect = CGRectMake(100, 100, 100, 80);
    CGContextFillRect(contextoCapa1, unRect);
    CGContextStrokeRect(contextoCapa1, unRect);
    
    //triangulo
    CGContextSetLineWidth(contextoCapa2, 2.0);
    CGContextSetFillColorWithColor(contextoCapa2,[UIColor blueColor].CGColor);
    CGContextSetStrokeColorWithColor(contextoCapa2, [UIColor redColor].CGColor);

    //primera vez
    CGContextMoveToPoint(contextoCapa2, 75, 75);
    CGContextAddLineToPoint(contextoCapa2, 75, 150);
    CGContextAddLineToPoint(contextoCapa2, 150, 150);
    CGContextClosePath(contextoCapa2);
    CGContextStrokePath(contextoCapa2);
    
    //segunda vez
    CGContextMoveToPoint(contextoCapa2, 75, 75);
    CGContextAddLineToPoint(contextoCapa2, 75, 150);
    CGContextAddLineToPoint(contextoCapa2, 150, 150);
    CGContextFillPath(contextoCapa2);
    
    //circulo
    CGContextSetLineWidth(contextoCapa3, 2.0);
    CGContextSetFillColorWithColor(contextoCapa3,[UIColor redColor].CGColor);
    CGContextSetStrokeColorWithColor(contextoCapa3, [UIColor blackColor].CGColor);
    
    CGRect circulo = CGRectMake(100,60,100,100);
    CGContextFillEllipseInRect(contextoCapa3,circulo);
    CGContextStrokeEllipseInRect(contextoCapa3, circulo);
    
    
    //Dibujan las capas
    
    if(self.bTriangulo)
    CGContextDrawLayerInRect(contexto, self.frame, capa2);
    if(self.bCirculo)
    CGContextDrawLayerInRect(contexto, self.frame, capa3);
    if(self.bCuadrado)
        CGContextDrawLayerInRect(contexto, self.frame, capa1);
    
}


@end
