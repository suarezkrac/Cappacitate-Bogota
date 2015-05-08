#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "MiPunto.h"

@interface MapaIOSViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *myMap;

@property CLLocationManager * locationManager;

@end
