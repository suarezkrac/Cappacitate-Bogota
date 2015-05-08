#import "MiPunto.h"

@implementation MiPunto

-(id)initInEAN{
    self = [super init];
    if (self) {
        _coordinate = CLLocationCoordinate2DMake(4.5980, -74.0758);
        _title = @"Bogotá";
    }
    return self;
}
-(void)createAnnotationWithCoordinate:(CLLocationCoordinate2D)coor andTitle:(NSString *)newTitle{
    _coordinate = coor;
    _title = newTitle;
}
@end
