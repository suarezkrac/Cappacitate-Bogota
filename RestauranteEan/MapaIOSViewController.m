//
//  MapaIOSViewController.m
//  Restaurante EAN
//
//  Created by dmendez on 8/05/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import "MapaIOSViewController.h"

@interface MapaIOSViewController ()

@end

@implementation MapaIOSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _myMap.delegate = self;
    MiPunto * bogota = [[MiPunto alloc] initInEAN];
    [_myMap addAnnotation:bogota];
    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    [_locationManager requestAlwaysAuthorization];
    [_myMap setShowsUserLocation:YES];
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    MKCoordinateRegion zonaZoom = MKCoordinateRegionMakeWithDistance([userLocation coordinate], 300, 300);
    [_myMap setRegion:zonaZoom animated:YES];
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
