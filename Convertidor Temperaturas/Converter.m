#import "Converter.h"

@implementation Converter

-(NSString *)convertToF:(NSString *)value{
    
    return [NSString stringWithFormat:@" %f ºF", [value floatValue] * 1.8000 + 32.00];
}
-(NSString *)convertToC:(NSString *)value{

    return [NSString stringWithFormat:@" %f ºC", ([value floatValue] - 32) / 1.8000];
}
@end
