#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface MiPunto : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, readonly, copy) NSString * title;

-(id)initInEAN;
-(void)createAnnotationWithCoordinate:(CLLocationCoordinate2D)coor andTitle:(NSString*)newTitle;

@end
