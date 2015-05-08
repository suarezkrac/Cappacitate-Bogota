#import "GoogleMapsViewController.h"
#import <GoogleMaps/GoogleMaps.h>
#import "MiPunto.h"

@implementation GoogleMapsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MiPunto * bog = [[MiPunto alloc] initInEAN];
    GMSMapView * myMap;
    GMSCameraPosition * camera = [GMSCameraPosition cameraWithLatitude:bog.coordinate.latitude longitude:bog.coordinate.longitude zoom:11];
    myMap = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    myMap.myLocationEnabled = YES;
    
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = camera.target;
    marker.snippet = @"Bogota";
    marker.appearAnimation = kGMSMarkerAnimationPop;
    marker.map = myMap;
    
    self.view = myMap;
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

@end
