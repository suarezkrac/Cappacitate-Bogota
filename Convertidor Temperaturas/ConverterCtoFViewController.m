

#import "ConverterCtoFViewController.h"

@interface ConverterCtoFViewController ()

@end

@implementation ConverterCtoFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _converterModel = [Converter new];
}

- (IBAction)convertToFButton:(id)sender {
    _resultText.text = [_converterModel convertToF:_valueConvert.text];
}

- (IBAction)convertToCButton:(id)sender {
    _resultText.text = [_converterModel convertToC:_valueConvert.text];
}
@end
