//
//  ViewController.m
//  MiPrimeraApp
//
//  Created by Developer Cymetria on 7/05/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString * name = @"Giovanny Suarez";
    NSString * job = @" Developer iOS";
    
    NSString * fullText = [name stringByAppendingString:job];
    int age = 30;
    
    NSLog(@"%@ y tiene %i", fullText, age);
    
    NSArray * country = @[@"Colombia", @"Brasil", @"Argentina"];
    
    NSLog(@"%@", [country objectAtIndex:2]);
    
    NSMutableArray * cities = [[NSMutableArray alloc] initWithArray:@[@"Bogota", @"Medellin", @"Cali"]];
    
    [cities addObject:@"Pereira"];
    [cities removeObjectAtIndex:0];
    
    NSLog(@"%@", cities);
    
    
    NSDictionary * car = @{
                           @"modelo": @"2015",
                           @"marca": @"Mazda",
                           @"referencia": @"Mazda 6 Skyline",
                           @"placa": @"HBY878"
                           };
    
    NSLog(@"%@",[car objectForKey:@"marca"]);
    
    NSMutableDictionary * user = [[NSMutableDictionary alloc] initWithDictionary:@{@"name": @"gio", @"pass": @"123" }];
    
    [user setObject:@"admin123" forKey:@"pass"];
    [user setObject:@"medellin" forKey:@"city"];
    
    [user removeObjectForKey:@"name"];
    
    NSLog(@"%@", user);
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
