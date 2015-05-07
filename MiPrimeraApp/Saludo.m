#import "Saludo.h"

@implementation Saludo

-(void)saludarUsuario:(NSString *)nombre{
    
    NSString * textoSaludo = @"Hola : ";
    
    _saludo = [textoSaludo stringByAppendingString:nombre];

}
@end
