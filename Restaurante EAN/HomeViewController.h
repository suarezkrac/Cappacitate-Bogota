#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController
- (IBAction)closeHome:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *welcomeLabel;
@property NSString * dataTransfer;

@end
