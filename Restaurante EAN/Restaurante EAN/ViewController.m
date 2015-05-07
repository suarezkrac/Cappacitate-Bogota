//
//  ViewController.m
//  Restaurante EAN
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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([_userID.text isEqualToString:@"666"] && [_userPass.text isEqualToString:@"123"]) {
        return YES;
    }
    else{
        UIAlertView * error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"El usuario o contraseña no es valido" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: @"Cancelar",  nil];
        [error show];
        return NO;
    }
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

/*    _home = [segue destinationViewController];*/
    
    _home = [[[segue destinationViewController] viewControllers] objectAtIndex:0];
 
    _home.dataTransfer = _userID.text;

}
@end









