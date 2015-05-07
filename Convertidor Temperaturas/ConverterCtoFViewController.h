
#import <UIKit/UIKit.h>
#import "Converter.h"

@interface ConverterCtoFViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *valueConvert;
- (IBAction)convertToFButton:(id)sender;
- (IBAction)convertToCButton:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *resultText;

@property Converter * converterModel;

@end







