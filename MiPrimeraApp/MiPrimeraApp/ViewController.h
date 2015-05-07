#import <UIKit/UIKit.h>
#import "Saludo.h"

@interface ViewController : UIViewController

@property Saludo * hola;

@property (strong, nonatomic) IBOutlet UITextField *userName;
@property (strong, nonatomic) IBOutlet UILabel *resultado;
- (IBAction)saludarUsuarioBoton:(id)sender;

@end

