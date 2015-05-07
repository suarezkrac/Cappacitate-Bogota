
#import <UIKit/UIKit.h>
#import "HomeViewController.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *userID;
@property (strong, nonatomic) IBOutlet UITextField *userPass;

@property HomeViewController * home;
@end

