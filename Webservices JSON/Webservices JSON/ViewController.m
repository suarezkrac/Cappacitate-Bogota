//
//  ViewController.m
//  Webservices JSON
//
//  Created by Developer Cymetria on 18/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

#import "ViewController.h"

#define kJSONURL @"http://api.kivaws.org/v1/loans/search.json"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _userOutput.hidden = YES;
    [_animacion startAnimating];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        NSData * data = [NSData dataWithContentsOfURL:[NSURL URLWithString:kJSONURL]];
        [self performSelectorOnMainThread:@selector(imprimirDatos:) withObject:data waitUntilDone:YES];
    });
}

-(void)imprimirDatos:(NSData*)responsedata{
    _userOutput.hidden = NO;
    [_animacion stopAnimating];
    _animacion.hidden = YES;
    
    NSError * error;
    NSDictionary * json = [NSJSONSerialization JSONObjectWithData:responsedata options:kNilOptions error:&error];
    NSLog(@"%@", json);
    
    NSArray * bloqueLoans = [json objectForKey:@"loans"];
    _userOutput.text = [[bloqueLoans objectAtIndex:0] objectForKey:@"activity"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
